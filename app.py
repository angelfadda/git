from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hola_mundo():
    return "¡Hola! El contenedor Docker se construyó y ejecutó correctamente."

if __name__ == '__main__':
    # Cloud Run y otros servicios de GCP inyectan el puerto en esta variable de entorno
    port = int(os.environ.get('PORT', 8080))
    app.run(host='0.0.0.0', port=port)
