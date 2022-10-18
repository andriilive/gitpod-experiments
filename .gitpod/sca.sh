# bash

# Install project
composer create-project roots/bedrock tmp
cat tmp/README.md >> README.md && mv -f README.md tmp/README.md
cat tmp/.gitignore >> .gitignore && mv -f .gitignore tmp/.gitignore
cp -f -r tmp/. . && rm -rf -r tmp

# Config the installation
wp dotenv salts regenerate
wp dotenv set DB_NAME wordpress
wp dotenv set DB_USER root
wp dotenv set DB_HOST 0.0.0.0
sed -i "s/DB_PASSWORD=.*/DB_PASSWORD=/g" .env
wp dotenv set WP_HOME $(gp url 8080)

# Create the database
wp db create

# Launch the installation
wp core install --url=$(gp url 8080) --title="Wordpress on GitPod" --admin_user="root" --admin_password="root" --admin_email="example@example.com" --skip-email

# Install project deps
composer require andriilive/wp-disable-generated-image-sizes andriilive/wp-cli-media-regenerate-svg-fix roots/soil

# lukasbesch/bedrock-plugin-disabler

# Create db folder
mkdir .db
wp db export --add-drop-table .db/db.sql