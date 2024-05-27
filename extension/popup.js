document.getElementById('send-btn').addEventListener('click', function() {
    var userInput = document.getElementById('user-input');
    var sendButton = document.getElementById('send-btn');
    if (userInput.value.trim() !== '') {
        sendButton.disabled = true; // Отключить кнопку при отправке сообщения
        appendMessage(userInput.value, 'user-message');
        fetchAnswer(userInput.value);
        userInput.value = '';
    }
});

document.getElementById('user-input').addEventListener('keypress', function(event) {
    if (event.keyCode === 13) {  // Код клавиши Enter
        event.preventDefault();  // Предотвратить переход на новую строку или другие действия по умолчанию
        var sendButton = document.getElementById('send-btn');
        sendButton.click();  // Программно нажимаем кнопку отправить
    }
});

function appendMessage(text, className) {
    var chatBox = document.getElementById('chat-box');
    var msgDiv = document.createElement('div');
    msgDiv.textContent = text;
    msgDiv.className = 'message ' + className;
    chatBox.appendChild(msgDiv);
    chatBox.scrollTop = chatBox.scrollHeight;

    // Сохраняем сообщение в localStorage
    saveMessage(text, className);
}

function saveMessage(text, className) {
    var currentSessionId = getCurrentSessionId();
    var messages = JSON.parse(localStorage.getItem(currentSessionId)) || [];
    
    var newMessage = {
        id: Date.now().toString(36) + Math.random().toString(36).substr(2),
        text: text,
        className: className
    };
    
    var isDuplicate = messages.some(function(message) {
        return message.id === newMessage.id;
    });

    if (!isDuplicate) {
        messages.push(newMessage);
        localStorage.setItem(currentSessionId, JSON.stringify(messages));
    }
}

function loadMessages() {
    var chatBox = document.getElementById('chat-box');
    var currentSessionId = getCurrentSessionId();
    var messages = JSON.parse(localStorage.getItem(currentSessionId));

    if (messages) {
        var messagesHtml = messages.map(function(message) {
            return '<div class="message ' + message.className + '">' + message.text + '</div>';
        }).join('');

        chatBox.innerHTML = messagesHtml;
        scrollChatToBottom(); 
    }
}

function scrollChatToBottom() {
    var chatBox = document.getElementById('chat-box');
    chatBox.scrollTop = chatBox.scrollHeight;
}

document.getElementById('menu-btn').addEventListener('click', function(event) {
    var menuOptions = document.getElementById('menu-options');
    menuOptions.classList.toggle('active');
    event.stopPropagation();
});

document.addEventListener('click', function(event) {
    var menuOptions = document.getElementById('menu-options');
    if (!menuOptions.contains(event.target) && event.target.id !== 'menu-btn') {
        menuOptions.classList.remove('active');
    }
});

function toggleMenu() {
    var menuOptions = document.getElementById('menu-options');
    if (menuOptions.classList.contains('active')) {
        menuOptions.classList.remove('active');
    }
}

function createNewChat() {
    saveCurrentSession();
    var newSessionId = 'chat_' + Date.now();
    localStorage.setItem('currentSessionId', newSessionId);
    var chatBox = document.getElementById('chat-box');
    chatBox.innerHTML = '';
    toggleMenu();
}

function saveCurrentSession() {
    var currentSessionId = getCurrentSessionId();
    var messages = JSON.parse(localStorage.getItem(currentSessionId)) || [];
    if (messages.length > 0) {
        var sessions = JSON.parse(localStorage.getItem('chatSessions')) || [];
        if (!sessions.includes(currentSessionId)) {
            sessions.unshift(currentSessionId); // Добавляем новую сессию в начало массива
            localStorage.setItem('chatSessions', JSON.stringify(sessions));
        }
    }
}

function getCurrentSessionId() {
    return localStorage.getItem('currentSessionId') || 'defaultSession';
}

var sessionPage = 0;
var sessionsPerPage = 3;

function showChatHistory() {
    saveCurrentSession();
    var sessionsList = document.getElementById('sessions-list');
    var sessions = JSON.parse(localStorage.getItem('chatSessions')) || [];
    var start = sessionPage * sessionsPerPage;
    var end = start + sessionsPerPage;
    var paginatedSessions = sessions.slice(start, end);
    
    sessionsList.innerHTML = paginatedSessions.map(function(sessionId) {
        return '<button class="session-btn" data-session-id="' + sessionId + '">' + formatSessionId(sessionId) + '</button>';
    }).join('');

    document.getElementById('prev-sessions-btn').disabled = sessionPage === 0;
    document.getElementById('next-sessions-btn').disabled = end >= sessions.length;
}

function loadSession(sessionId) {
    localStorage.setItem('currentSessionId', sessionId);
    loadMessages();
    closeMenuAndHistory();
}

function toggleHistory() {
    var historyViewer = document.getElementById('history-viewer');
    if (historyViewer.classList.contains('hidden')) {
        showChatHistory();
        historyViewer.classList.remove('hidden');
    } else {
        historyViewer.classList.add('hidden');
    }
}

function closeMenuAndHistory() {
    document.getElementById('history-viewer').classList.add('hidden');
    toggleMenu();
}

function formatSessionId(sessionId) {
    var date = new Date(parseInt(sessionId.split('_')[1]));
    return date.toLocaleString();
}

document.getElementById('new-chat-btn').addEventListener('click', createNewChat);
document.getElementById('view-history-btn').addEventListener('click', toggleHistory);
document.getElementById('prev-sessions-btn').addEventListener('click', function() {
    sessionPage--;
    showChatHistory();
});
document.getElementById('next-sessions-btn').addEventListener('click', function() {
    sessionPage++;
    showChatHistory();
});

document.addEventListener('DOMContentLoaded', function() {
    if (!localStorage.getItem('currentSessionId')) {
        localStorage.setItem('currentSessionId', 'defaultSession');
    }
    loadMessages();
    scrollChatToBottom();
});

// Используем делегирование событий для динамически созданных кнопок сессий
document.getElementById('sessions-list').addEventListener('click', function(event) {
    if (event.target.classList.contains('session-btn')) {
        var sessionId = event.target.getAttribute('data-session-id');
        loadSession(sessionId);
    }
});

function fetchAnswer(query) {
    fetch('http://89.178.97.46:5000/search', {
        method: 'POST',
        body: JSON.stringify({ question: query }),
        headers: {
            'Content-Type': 'application/json'
        }
    })
    .then(response => response.json())
    .then(data => {
        appendMessage(data.answer, 'bot-message');
        document.getElementById('send-btn').disabled = false;
    })
    .catch(error => {
        console.error('Error:', error);
        appendMessage('Произошла ошибка.', 'bot-message');
        document.getElementById('send-btn').disabled = false;
    });
}
