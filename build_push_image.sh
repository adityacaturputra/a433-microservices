# Perintah untuk membuat Docker image dari Dockerfile yang telah dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build --platform="linux/amd64" -t shipping-service:latest .
# Melihat daftar image di lokal.
docker images
# Mengubah nama image agar sesuai dengan format Docker Hub.
docker tag shipping-service:latest adityacaturputra/shipping-service:latest
# Login ke Docker Hub via Terminal
echo $PASSWORD_DOCKER_HUB | docker login -u adityacaturputra --password-stdin
# Mengunggah image ke Docker Hub.
docker push adityacaturputra/shipping-service:latest