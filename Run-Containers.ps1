
$name = 'nextcloud'
Write-Output "Stopping $name container."
docker container stop $name
Write-Output "Removing $name container."
docker container rm $name
Write-Output "Running new $name container"
docker run --detach --name $name --publish 8180:80 --volume nextcloud:/var/www/html $name

$name = 'redis'
Write-Output "Stopping $name container."
docker container stop $name
Write-Output "Removing $name container."
docker container rm $name
Write-Output "Running new $name container"
docker run --detach --name $name $name

$name = 'openapi-generator-online'
Write-Output "Stopping $name container."
docker container stop $name
Write-Output "Removing $name container."
docker container rm $name
Write-Output "Running new $name container"
docker run --detach --name $name --env GENERATOR_HOST=http://localhost --publish 8181:8080 "openapitools/$($name):latest-release"