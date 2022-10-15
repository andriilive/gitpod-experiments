mkdir my-wp-bedrock-site && cd my-wp-bedrock-site

ddev config --project-type=wordpress --docroot=web --create-docroot
ddev start
ddev composer create roots/bedrock
