FROM gitpod/workspace-full

USER gitpod
RUN brew install sqlite3 wp-cli php@8.0