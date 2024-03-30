# Perintah untuk membuat Docker image dari Dockerfile yang telah dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .
# Melihat daftar image di lokal.
docker images
# Mengubah nama image agar sesuai dengan format Docker Hub.
docker tag item-app:v1 adityacaturputra/dicoding-devops-proyek-pertama:v1
# Login ke Docker Hub via Terminal
echo $PASSWORD_DOCKER_HUB | docker login -u adityacaturputra --password-stdin
# Mengunggah image ke Docker Hub.
docker push adityacaturputra/dicoding-devops-proyek-pertama:v1