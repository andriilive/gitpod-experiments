FROM gitpod/workspace-full

USER gitpod
RUN brew install \
    sqlite3 \
    php@8.0 && \
    brew unlink php && \
    brew link php@8.0 && \
    brew install wp-cli && \
    wp package install aaemnnosttv/wp-cli-dotenv-command:^2.0 && \
    brew install mysql

USER root
RUN brew services restart mysql