from flask import Flask, request, jsonify
from flask_cors import CORS
import sqlite3

app = Flask(__name__)
CORS(app)

DATABASE = 'database.db'

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
        print("Tabela criando com sucessso.")
        conn.close()


if __name__ == '__main__':
    criando_perfil()
    app.run(debug=True)
