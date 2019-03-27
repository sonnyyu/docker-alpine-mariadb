docker build -t docker-mariadb .

docker run -it --name mysql -p 3306:3306 -v /var/lib/mysql:/var/lib/mysql -e MYSQL_DATABASE=wordpressdb  -e MYSQL_ROOT_PASSWORD=password docker-mariadb

docker container prune -f

docker image prune -a -f

docker volume prune -f

docker network prune -f

docker system prune -f

sudo rm -rf /var/lib/docker/volumes/*

docker-mariadb       latest              a590afb36557        59 seconds ago      228MB

