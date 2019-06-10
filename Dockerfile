FROM python:3.7-alpine
# sec
ENV DELAY 5

WORKDIR /app
COPY src/ .

RUN pip install -r requirements.txt

ENTRYPOINT ["./entrypoint.sh"]

# docker build . -t http-exporter
# docker run -d --name exporter http-exporter
# docker ps -a
# docker logs exporter
# docker rm exporter -f