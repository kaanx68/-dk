FROM python:3.10-slim
RUN pip install litellm[proxy]
COPY config.yaml /app/config.yaml
WORKDIR /app
CMD ["litellm", "--config", "config.yaml", "--port", "8000"]
