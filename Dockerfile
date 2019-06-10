FROM python:3.7-alpine
# sec
ENV DELAY 5
ENV CONFIG config.yaml

WORKDIR /app
COPY src/ .

RUN pip install -r requirements.txt

ENTRYPOINT ["./entrypoint.sh"]
