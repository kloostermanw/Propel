docker run -d -e MYSQL_ROOT_PASSWORD='root' \
    -v my.cnf:/etc/mysql/my.cnf \
    -v data:/docker-entrypoint-initdb.d \
    -p 3306:3306 \
    --name mysql mysql:5.7





