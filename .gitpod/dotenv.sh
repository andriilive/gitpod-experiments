cd /workspace/gitpod-wordpress-experiments
# Config the installation
wp dotenv salts regenerate --file=.env.local
wp dotenv set DB_NAME wordpress --file=.env.local
wp dotenv set DB_USER root --file=.env.local
wp dotenv set DB_HOST 0.0.0.0 --file=.env.local
sed -i "s/DB_PASSWORD=.*/DB_PASSWORD=/g" .env.local
wp dotenv set WP_HOME $(gp url 8080) --file=.env.local