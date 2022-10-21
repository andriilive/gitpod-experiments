
# Create the database
wp db create

# Create db folder
mkdir .db
wp db export --add-drop-table .db/db.sql