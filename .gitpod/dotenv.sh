cd /workspace/gitpod-wordpress-experiments
# Config the installation
wp config create
wp config set WP_DB wordpress
wp config set DB_USER root
wp config set DB_PASSWORD -raw
