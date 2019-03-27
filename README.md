docker build -t docker-mariadb .

docker run -it --name mysql -p 3306:3306 -v /var/lib/mysql:/var/lib/mysql -e MYSQL_DATABASE=wordpressdb  -e MYSQL_ROOT_PASSWORD=password docker-mariadb


