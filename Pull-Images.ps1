# Pull the latest images that are currently stored in the local image repository.
Write-Output "`nPulling rabbitmq..."
docker pull rabbitmq:latest

Write-Output "`nPulling nextcloud..."
docker pull nextcloud:latest

Write-Output "`nPulling redis..."
docker pull redis:latest

Write-Output "`nPulling mongo..."
docker pull mongo:latest

Write-Output "`nPulling kong..."
docker pull kong:latest

Write-Output "`nPulling mongo-express..."
docker pull mongo-express:latest

Write-Output "`nPulling openapi-generator-cli..."
docker pull openapitools/openapi-generator-cli:latest-release

Write-Output "`nPulling openapi-generator-online..."
docker pull openapitools/openapi-generator-online:latest-release

Write-Output "`nPruning images..."
docker image prune -f