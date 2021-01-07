# responsi-teknocloud
responsi praktikum teknologi cloud

# ----cara penggunaan----
docker image rm singgih-webserver2

docker build -t singgih-webserver2 .

docker run -d --name SinggihWSContainer -p 80:80 -p 3306:3306 singgih-webserver2

docker ps
