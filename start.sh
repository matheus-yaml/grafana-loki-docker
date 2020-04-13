docker plugin install  grafana/loki-docker-driver:latest --alias loki --grant-all-permissions

docker run -d --name=grafana -p 3000:3000 grafana/grafana

docker run -d --name=grafana-loki -p 3100:3100 grafana/loki:latest

docker run --log-driver=loki \
    --log-opt loki-url="http://192.168.0.101:3100/loki/api/v1/push" \
    --log-opt loki-retries=5 \
    --log-opt loki-batch-size=400 \
    --rm \
	-p 80:80 nginx
