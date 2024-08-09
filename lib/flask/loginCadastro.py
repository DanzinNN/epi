from flask import Flask, request, jsonify
from flask_cors import CORS
import sqlite3

app = Flask(__name__)
CORS(app)

DATABASE = 'database.db'

def create_table():
    try:
        conn = sqlite3.connect(DATABASE)
        cursor = conn.cursor()
        cursor.execute('''CREATE TABLE IF NOT EXISTS users
                          (id INTEGER PRIMARY KEY AUTOINCREMENT,
                           email TEXT NOT NULL,
                           password TEXT NOT NULL)''')
        conn.commit()
    except Exception as e:
        print(f"Error creating users table: {e}")
    finally:
        conn.close()

def criando_perfil():
    try:
        conn = sqlite3.connect(DATABASE)
        cursor = conn.cursor()
        cursor.execute('''CREATE TABLE IF NOT EXISTS perfil
                          (nome TEXT NOT NULL,
                           cpf INTEGER PRIMARY KEY AUTOINCREMENT,
                           data_de_nascimento DATE NOT NULL,
                           numero_de_contato INTEGER NOT NULL,
                           numero_identificacao INTEGER NOT NULL,
                           cargo TEXT NOT NULL,
                           setor TEXT NOT NULL,
                           empresa TEXT NOT NULL)''')
        conn.commit()
    except Exception as e:
        print(f"Error creating perfil table: {e}")
    finally:
        conn.close()

@app.route('/register', methods=['POST'])
def register_user():
    data = request.get_json()
    email = data.get('email')
    password = data.get('password')

    try:
        conn = sqlite3.connect(DATABASE)
        cursor = conn.cursor()
        cursor.execute('INSERT INTO users (email, password) VALUES (?, ?)', (email, password))
        conn.commit()
        return jsonify({'message': 'Usuário cadastrado com sucesso!'}), 200
    except Exception as e:
        return jsonify({'error': str(e)}), 500
    finally:
        conn.close()

@app.route('/login', methods=['POST'])
def login_user():
    data = request.get_json()
    email = data.get('email')
    password = data.get('password')

    try:
        conn = sqlite3.connect(DATABASE)
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM users WHERE email = ? AND password = ?', (email, password))
        user = cursor.fetchone()
        if user:
            return jsonify({'message': 'Login bem-sucedido!'}), 200
        else:
            return jsonify({'error': 'Email ou senha incorretos'}), 401
    except Exception as e:
        return jsonify({'error': str(e)}), 500
    finally:
        conn.close()

if __name__ == '__main__':
    create_table()
    app.run(debug=True)
