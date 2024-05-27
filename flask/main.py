from flask import Flask, request, jsonify
from flask_cors import CORS
import psycopg2
from psycopg2 import pool
import pandas as pd
import re
import nltk
from nltk.corpus import stopwords
from nltk.stem.snowball import SnowballStemmer
import logging
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity

# Загрузка стоп-слов и настройка стеммера
nltk.download('stopwords')
stemmer = SnowballStemmer("russian")
stop_words = set(stopwords.words('russian'))

app = Flask(__name__)

# Настройка CORS
CORS(app)

# Настройка логирования
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

# Настройка подключения к базе данных
db_config = {
    "dbname": "cpp_qna",
    "user": "postgres",
    "password": "P@ssw0rd",
    "host": "localhost",
    "port": "5432"
}
db_pool = psycopg2.pool.SimpleConnectionPool(1, 10, **db_config)

@app.after_request
def after_request(response):
    response.headers.add('Access-Control-Allow-Headers', 'Content-Type,Authorization')
    response.headers.add('Access-Control-Allow-Methods', 'GET, POST, OPTIONS')
    response.headers.add('Access-Control-Allow-Credentials', 'true')
    response.headers.add('Access-Control-Allow-Origin', '*')
    return response

def get_data():
    try:
        # Получение соединения из пула
        conn = db_pool.getconn()
        if conn:
            # Выполнение SQL-запроса
            cur = conn.cursor()
            cur.execute("SELECT question, answer FROM qa_pairs")
            data = cur.fetchall()
            cur.close()
            db_pool.putconn(conn)
            return data
        else:
            raise Exception("Не удалось получить соединение из пула.")
    except Exception as e:
        logger.error(f"Ошибка при подключении к базе данных: {e}")
        return []

def preprocess_text(text):
    text = text.lower()
    text = re.sub(r'\W', ' ', text)
    text = re.sub(r'\s+', ' ', text)
    tokens = text.split()
    tokens = [word for word in tokens if word not in stop_words]
    tokens = [stemmer.stem(word) for word in tokens]
    return ' '.join(tokens)

# Загрузка данных
data = get_data()
if not data:
    raise Exception("Не удалось загрузить данные из базы данных.")

df = pd.DataFrame(data, columns=['question', 'answer'])
df['question'] = df['question'].apply(preprocess_text)

# Настройка TF-IDF Vectorizer
tfidf_vectorizer = TfidfVectorizer()
tfidf_matrix = tfidf_vectorizer.fit_transform(df['question'])

def find_similar_question_tfidf(user_query):
    user_query = preprocess_text(user_query)
    user_query_vector = tfidf_vectorizer.transform([user_query])
    cosine_similarities = cosine_similarity(user_query_vector, tfidf_matrix)

    # Получение индекса самого похожего вопроса
    max_similarity_index = cosine_similarities.argmax()
    max_similarity_score = cosine_similarities[0, max_similarity_index]

    # Увеличение порога схожести для более точного совпадения
    if max_similarity_score < 0.8:
        return "К сожалению, я не нашел ответ на ваш вопрос. Попробуйте изменить формулировку."
    else:
        return df.iloc[max_similarity_index]['answer']

@app.route('/search', methods=['POST'])
def search():
    data = request.get_json()
    query = data.get('question', '').strip()

    if not query:
        return jsonify({'answer': "Пожалуйста, задайте вопрос."})

    answer = find_similar_question_tfidf(query)
    return jsonify({'answer': answer})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)