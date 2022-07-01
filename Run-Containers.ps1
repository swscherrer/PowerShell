$name = 'nextcloud'
docker container stop $name
docker container rm $name
docker run --detach --name nextcloud --publish 8080:80 --volume nextcloud:/var/www/html nextcloud