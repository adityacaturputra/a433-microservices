# Perintah untuk membuat Docker image dari Dockerfile yang telah dibuat, dengan nama image order-service:latest dan memiliki tag v1.
docker build -t order-service:latest .
# Melihat daftar image di lokal.
docker images
# Mengubah nama image agar sesuai dengan format Docker Hub.
docker tag order-service:latest adityacaturputra/order-service:latest
# Login ke Docker Hub via Terminal
echo $PASSWORD_DOCKER_HUB | docker login -u adityacaturputra --password-stdin
# Mengunggah image ke Docker Hub.
docker push adityacaturputra/order-service:latest