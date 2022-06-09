# Pull the latest images that are currently store in the local image repository.
Write-Output "`nPulling rabbitmq..."
docker pull rabbitmq

Write-Output "`nPulling nextcloud..."
docker pull nextcloud

Write-Output "`nPulling redis..."
docker pull redis

Write-Output "`nPulling mongo..."
docker pull mongo

Write-Output "`nPulling kong..."
docker pull kong

Write-Output "`nPulling mongo-express..."
docker pull mongo-express