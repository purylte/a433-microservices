docker build -t item-app:v1 .

docker images

docker tag item-app:v1 purylte/item-app:v1

echo $PASSWORD_DOCKER_HUB | docker login -u purylte --password-stdin

docker push purylte/item-app:v1
