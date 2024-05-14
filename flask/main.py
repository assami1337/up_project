from flask import Flask, request, jsonify
from flask_cors import CORS
import psycopg2
from sklearn.feature_extraction.text import TfidfVectorizer, CountVectorizer
from sklearn.metrics.pairwise import cosine_similarity
from sklearn.metrics import jaccard_score
import pandas as pd
import re
import nltk
from nltk.corpus import stopwords
from nltk.stem.snowball import SnowballStemmer
import numpy as np

# Загрузка стоп-слов и настройка стеммера
nltk.download('stopwords')
stemmer = SnowballStemmer("russian")
stop_words = set(stopwords.words('russian'))

app = Flask(__name__)

# Настройка CORS
CORS(app)

@app.after_request
def after_request(response):
    response.headers.add('Access-Control-Allow-Headers', 'Content-Type,Authorization')
    response.headers.add('Access-Control-Allow-Methods', 'GET, POST, OPTIONS')
    response.headers.add('Access-Control-Allow-Credentials', 'true')
    response.headers.add('Access-Control-Allow-Origin', '*')
    return response

def get_data():
    try:
        # Параметры подключения
        dbname = "cpp_qna"
        user = "postgres"
        password = "P@ssw0rd"
        host = "localhost"
        port = "5432"

        # Установка соединения с базой данных
        conn = psycopg2.connect(
            dbname=dbname,
            user=user,
            password=password,
            host=host,
            port=port
        )

        # Выполнение SQL-запроса
        cur = conn.cursor()
        cur.execute("SELECT question, answer FROM qa_pairs")
        data = cur.fetchall()
        cur.close()
        conn.close()
        return data
    except Exception as e:
        print(f"Ошибка при подключении к базе данных: {e}")
        return []

def preprocess_text(text):
    text = text.lower()
    text = re.sub(r'\W', ' ', text)
    text = re.sub(r'\s+', ' ', text)
    tokens = text.split()
    tokens = [word for word in tokens if word not in stop_words]
    tokens = [stemmer.stem(word) for word in tokens]
    return ' '.join(tokens)

# Инициализация данных
data = get_data()
if not data:
    raise Exception("Не удалось загрузить данные из базы данных.")

df = pd.DataFrame(data, columns=['question', 'answer'])
df['question'] = df['question'].apply(preprocess_text)

# Используем TF-IDF и биграммы для векторизации вопросов
vectorizer_tfidf = TfidfVectorizer(ngram_range=(1, 2))
vectorizer_tfidf.fit(df['question'])
question_vectors_tfidf = vectorizer_tfidf.transform(df['question'])

# Используем CountVectorizer для подсчета биграмм
vectorizer_count = CountVectorizer(ngram_range=(1, 2), binary=True)
vectorizer_count.fit(df['question'])
question_vectors_count = vectorizer_count.transform(df['question'])

# Кэширование результатов
cache = {}

def find_similar_question(user_query):
    user_query = preprocess_text(user_query)
    if user_query in cache:
        return cache[user_query]

    user_query_vector_tfidf = vectorizer_tfidf.transform([user_query])
    user_query_vector_count = vectorizer_count.transform([user_query])

    # Расчет косинусного сходства
    similarities_tfidf = cosine_similarity(user_query_vector_tfidf, question_vectors_tfidf).flatten()

    # Расчет сходства по Джаккару
    similarities_jaccard = np.array([jaccard_score(user_query_vector_count.toarray()[0], q_vec.toarray()[0], average='binary') for q_vec in question_vectors_count])

    # Комбинированная мера сходства
    combined_similarities = 0.5 * similarities_tfidf + 0.5 * similarities_jaccard
    max_combined_similarity = combined_similarities.max()

    if max_combined_similarity < 0.2:
        answer = "К сожалению, я не нашел ответ на ваш вопрос. Попробуйте изменить формулировку."
    else:
        max_similarity_index = combined_similarities.argmax()
        answer = df.iloc[max_similarity_index]['answer']

    cache[user_query] = answer
    return answer

@app.route('/search', methods=['POST'])
def search():
    data = request.get_json()
    query = data.get('question', '').strip()

    if not query:
        return jsonify({'answer': "Пожалуйста, задайте вопрос."})

    answer = find_similar_question(query)
    return jsonify({'answer': answer})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
