FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN iconv -f UTF-16 -t UTF-8 requirements.txt > requirements-utf8.txt \
    && pip install --no-cache-dir -r requirements-utf8.txt \
    && rm requirements-utf8.txt
COPY . .
LABEL org.opencontainers.image.description="Containerization support for local development using Docker"
EXPOSE 7000

CMD ["python", "manage.py", "runserver", "0.0.0.0:7000"]
