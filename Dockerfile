FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
LABEL org.opencontainers.image.description="Containerization support for local development using Docker"
EXPOSE 7000

CMD ["python", "manage.py", "runserver", "0.0.0.0:7000"]
