# bash

gp sync-await init
mkdir .utils

touch .utils/phpinfo.php && echo '<?php phpinfo();' >> .utils/phpinfo.php
chmod 640 .utils/phpinfo.php

wget https://github.com/vrana/adminer/releases/download/v4.8.1/editor-4.8.1-en.php -O .utils/adminer.php
chmod 640 .utils/adminer.php

# Create utils
touch .utils/phpinfo.php && echo '<?php phpinfo();' >> .utils/phpinfo.php
chmod 640 .utils/phpinfo.php