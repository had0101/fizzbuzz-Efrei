# Utiliser une image Python officielle comme base
FROM python:3.10

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier tous les fichiers dans le conteneur
COPY . .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Définir la commande par défaut pour exécuter le programme
CMD ["python", "main.py"]
