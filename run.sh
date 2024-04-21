docker build -t oksesaneka22/container-id-web-server .
docker login
docker push oksesaneka22/container-id-web-server
docker stack deploy -c docker-compose.yml container-id-web-server
