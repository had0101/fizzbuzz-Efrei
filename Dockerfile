# Utiliser l'image officielle de Python
FROM python:3.10

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le contenu du projet dans le conteneur
COPY . .

# Installer les dépendances si elles existent
RUN pip install --no-cache-dir -r requirements.txt || echo "No requirements.txt found"

# Définir la commande par défaut pour exécuter les tests
CMD ["python", "-m", "unittest", "discover", "-s", "tests"]