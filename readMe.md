1. Cloner ou télécharger le projet
Clonez ou téléchargez le projet dans le répertoire de votre choix.


git clone

cd projet

2. Construire et démarrer les conteneurs
Exécutez la commande suivante dans PowerShell ou un terminal pour construire et démarrer les conteneurs Docker avec Docker Compose. Cette commande lira le fichier docker-compose.yml et lancera les services.


docker-compose up --build

--build : Cela indique à Docker de reconstruire les images si nécessaire.
Les conteneurs seront créés pour PHP/Apache, MySQL et Composer.


3. Installer les dépendances PHP avec Composer
Si votre projet utilise des dépendances PHP, vous pouvez installer celles-ci avec Composer. Exécutez cette commande dans votre terminal pour lancer Composer dans le conteneur :

docker-compose run --rm composer install
Cela installera toutes les dépendances définies dans votre fichier composer.json.

4. Accéder à MySQL dans le conteneur
Vous pouvez accéder à la base de données MySQL en vous connectant au conteneur MySQL avec la commande suivante :

docker-compose exec db mysql -u monutilisateur -p

Entrez le mot de passe que vous avez configuré dans le fichier docker-compose.yml (par défaut rootpassword). Vous pouvez maintenant interagir avec la base de données MySQL.

Créer la DB et les data avec le code de db.sql


5. Accéder à l'application via le navigateur
Une fois les conteneurs en cours d'exécution, ouvrez votre navigateur et allez à l'URL suivante :

http://localhost:8080



Arrêter les conteneurs
Lorsque vous avez terminé, vous pouvez arrêter tous les conteneurs et nettoyer les ressources Docker avec cette commande :

docker-compose down
