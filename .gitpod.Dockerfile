FROM gitpod/workspace-full

USER gitpod
RUN brew install sqlite3 php@8.0 wp-cli && brew unlink php && brew link php@8.0 && brew install mysql