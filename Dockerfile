FROM python:3.10-slim
RUN pip install --upgrade "litellm[proxy]>=1.105.0" google-auth
COPY config.yaml /app/config.yaml
WORKDIR /app
CMD ["litellm", "--config", "config.yaml", "--port", "8000"]
