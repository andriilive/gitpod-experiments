FROM gitpod/workspace-mysql

# Install Redis.
RUN sudo apt-get update \
 && sudo apt-get install -y \
  redis-server \
 && brew install php@8.0 drud/ddev/ddev && brew link --force --overwrite php@8.0 \
 && mkcert -install \
 && sudo rm -rf /var/lib/apt/lists/*