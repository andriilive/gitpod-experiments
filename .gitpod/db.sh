
# Create the database
wp db create

# Launch the installation
wp core install --url=$(gp url 8080) --title="Wordpress on GitPod" --admin_user="root" --admin_password="root" --admin_email="example@example.com" --skip-email

# Create db folder
mkdir .db
wp db export --add-drop-table .db/db.sql