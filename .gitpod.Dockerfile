FROM gitpod/workspace-mysql

USER gitpod
RUN brew install wp-cli php@8.0 && brew unlink php && brew link php@8.0
