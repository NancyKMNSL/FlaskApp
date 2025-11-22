# Étape 1 : Image de base Python 3.11
FROM python:3.11-alpine

# Étape 2 : Définir le répertoire de travail
WORKDIR /app
# Étape 3 : Copier tout le code de l'application
COPY . /app
# Étape 4 : Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt
# Étape 6 : Exposer le port Flask
EXPOSE 5000
# Étape 7 : Lancer l'application Flask
# Option 1 : si ton app.py contient un app.run(host="0.0.0.0", port=5000)
CMD python ./app.py