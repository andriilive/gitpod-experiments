FROM gitpod/workspace-full

USER gitpod
RUN brew install \
    sqlite3 \
    php@8.0 && \
    brew unlink php && \
    brew link php@8.0 && \
    echo 'export PATH="/home/linuxbrew/.linuxbrew/opt/php@8.0/bin:$PATH"' >> /home/gitpod/.bash_profile && \
    echo 'export PATH="/home/linuxbrew/.linuxbrew/opt/php@8.0/sbin:$PATH"' >> /home/gitpod/.bash_profile && \
    brew install wp-cli && \
    wp package install aaemnnosttv/wp-cli-dotenv-command:^2.0

USER root
RUN brew services restart mysql