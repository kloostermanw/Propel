docker run -it --rm --name my-test \
    -v "$PWD":/usr/src/app \
    -e PHP_EXTENSIONS='intl pdo_sqlite sqlite3 xdebug' \
    thecodingmachine/php:8.0-v4-cli bash