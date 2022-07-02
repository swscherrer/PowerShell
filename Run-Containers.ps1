$name = 'nextcloud'
Write-Output "Stopping $name container."
docker container stop $name
Write-Output "Removing $name container."
docker container rm $name
Write-Output "Running new $name container."
docker run --detach --name $name --publish 8080:80 --volume nextcloud:/var/www/html $name