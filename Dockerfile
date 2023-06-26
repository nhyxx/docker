FROM python:3.9-alpine

WORKDIR /app/web_docker_toy

COPY . .

RUN pip install --upgrade pip

RUN pip install fastapi==0.95.1

RUN pip install uvicorn==0.21.1

RUN chmod +x entrypoint.sh

EXPOSE 8080

ENTRYPOINT ["sh", "-c", "./entrypoint.sh & tail -f /dev/null"]