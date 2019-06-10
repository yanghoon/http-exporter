# Overview
Do check healthy of HTTP endpoints configured in config.yaml

# Getting Started
```bash
cd src && pip install -r requirements.txt
python --version  # 3.7.x
python main.py
```

# Docker
```bash
# Compose
docker-compose up -d --build
docker-compose logs -f         # docker-compose ps
docker-compose down

# Docker
docker build . -t http-exporter
docker run -d --name exporter http-exporter
docker ps -a
docker logs exporter -f
docker rm exporter -f
```

# Kubernetes
```bash
# edit targets and dns
kubectl apply -f k8s/config.yaml
kubectl apply -f k8s/deploy.yaml
kubectl logs http-scrap-xxx -n http-scrap -f
```


## ENV
Key | Default | Note
--- | --- | ---
DELAY | 5 | the interval between start of execution and next start (sec, fixed rate) |
CONFIG | config.yaml | target URLs and names |