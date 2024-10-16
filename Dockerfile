# Utiliser une image node comme base
FROM node:14

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers package.json et package-lock.json
COPY . .

# Installer les dépendances
RUN npm install

# Exposer le port du back-end 
EXPOSE 5001

# Démarrer le serveur
CMD ["npm", "start"]
