from flask import Flask, request, jsonify
from flask_cors import CORS
import sqlite3

app = Flask(__name__)
CORS(app)  # Adiciona CORS ao aplicativo Flask

DATABASE = 'database.db'

def create_table():
    conn = sqlite3.connect(DATABASE)
    cursor = conn.cursor()
    cursor.execute('''CREATE TABLE IF NOT EXISTS users
                      (id INTEGER PRIMARY KEY AUTOINCREMENT,
                       email TEXT NOT NULL,
                       password TEXT NOT NULL)''')
    conn.commit()
    conn.close()

@app.route('/register', methods=['POST', 'OPTIONS'])
def register_user():
    if request.method == 'POST':
        data = request.get_json()
        email = data.get('email')
        password = data.get('password')

        conn = sqlite3.connect(DATABASE)
        cursor = conn.cursor()
        cursor.execute('INSERT INTO users (email, password) VALUES (?, ?)', (email, password))
        conn.commit()
        conn.close()

        return jsonify({'message': 'Usuário cadastrado com sucesso!'}), 200

    return '', 200

@app.route('/login', methods=['POST', 'OPTIONS'])  # Rota para login
def login_user():
    if request.method == 'POST':
        data = request.get_json()
        email = data.get('email')
        password = data.get('password')

        conn = sqlite3.connect(DATABASE)
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM users WHERE email = ? AND password = ?', (email, password))
        user = cursor.fetchone()
        conn.close()

        if user:
            return jsonify({'message': 'Login bem-sucedido!'}), 200
        else:
            return jsonify({'error': 'Email ou senha incorretos'}), 401

    return '', 200

if __name__ == '__main__':
    create_table()
    app.run(debug=True)
