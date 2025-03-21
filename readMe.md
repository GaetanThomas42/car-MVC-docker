
### Instructions d'usage :

1. **Cloner le projet** :
   - Copiez le projet depuis GitHub via la commande `git clone`.
   
2. **Construire et démarrer avec Docker** :
   - Utilisez `docker-compose up --build` pour démarrer l'application avec Docker.

3. **Installer les dépendances** :
   - Si vous avez un fichier `composer.json`, exécutez `docker-compose run --rm composer install`.

4. **Accéder à la base de données** :
   - Utilisez `docker-compose exec db mysql -u monutilisateur -p` pour interagir avec MySQL dans le conteneur.

    - Entrez le mot de passe que vous avez configuré dans le fichier docker-compose.yml (par défaut rootpassword). Vous pouvez maintenant interagir avec la base de données MySQL.

    - Créer la DB et les data avec le code de db.sql

5. **Vérifier et interagir avec l'application via votre navigateur** :
   - Ouvrez `http://localhost:8080` pour tester l'application en cours d'exécution.

6. **Arrêter les conteneurs** :
   - Utilisez `docker-compose down` pour arrêter les services.

