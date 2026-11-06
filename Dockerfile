# Usa una imagen oficial de Python ligera como base
FROM python:3.9-slim

# Define la carpeta de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de requerimientos y descarga las librerías
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto de tu código (el app.py)
COPY . .

# Expone el puerto que usará la app
EXPOSE 8080

# El comando que se ejecuta al encender el contenedor
CMD ["python", "app.py"]
