FROM gitpod/workspace-mysql

USER gitpod
RUN brew install wp-cli php@8.0 && brew unlink php && brew link php@8.0

RUN echo 'export PATH="/home/linuxbrew/.linuxbrew/opt/php@8.0/bin:$PATH"' >> /home/gitpod/.bash_profile && /
    echo 'export PATH="/home/linuxbrew/.linuxbrew/opt/php@8.0/sbin:$PATH"' >> /home/gitpod/.bash_profile && /
    wp package install aaemnnosttv/wp-cli-dotenv-command:^2.0