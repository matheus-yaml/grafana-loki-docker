# grafana-loki-docker

docker plugin install  grafana/loki-docker-driver:latest --alias loki --grant-all-permissions

open http://localhost:3000 and add loki datasource

go to explore http://localhost:3000/explore

execute query {container_name="nginx"}
