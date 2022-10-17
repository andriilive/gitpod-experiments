FROM gitpod/workspace-full

USER gitpod
RUN brew install sqlite3 wp-cli php@8.0 mysql && wp package install aaemnnosttv/wp-cli-dotenv-command:^2.0