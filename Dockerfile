# Utiliser l'image officielle de Python
FROM python:3.10

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier uniquement les fichiers nécessaires
COPY . .

# Installer les dépendances si elles existent
RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

# Définir la commande par défaut pour exécuter les tests
CMD ["python", "-m", "unittest", "discover", "-s", "fizzbuzz"]
