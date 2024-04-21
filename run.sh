docker build -t oksesaneka22/container-id-web-server .
docker push oksesaneka22/container-id-web-server
docker stack deploy -c docker-compose.yml container-id-web-server
