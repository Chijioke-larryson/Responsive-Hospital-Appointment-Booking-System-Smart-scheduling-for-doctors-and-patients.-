# Hospital Appointment Booking System

A Django application for patients and doctors to manage hospital appointments through a responsive web interface.

## Features

- Patient registration and login
- Doctor login and dashboard
- Appointment creation, updates, and cancellation
- Doctor and patient lists
- Responsive pages for home, gallery, about, and contact
- SQLite database for local development

## Stack

- Python 3.12
- Django 6.0.7
- SQLite
- HTML, CSS, and Bootstrap-style responsive UI
- Docker

## Run From Docker Hub

Pull the published image:

```bash
docker pull chijiokexbt/hosptalapp:v1
docker run -d --name hospital-app -p 7000:7000 chijiokexbt/hosptalapp:v1
```

Open `http://localhost:7000`. View logs with `docker logs hospital-app`.

## Run With Docker Locally

From this directory:

```bash
docker build -t chijiokexbt/hosptalapp:v1 .
docker run -d --name hospital-app -p 7000:7000 chijiokexbt/hosptalapp:v1
```

The image runs Django's development server on container port `7000`.

## Run Without Docker

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
python manage.py migrate
python manage.py runserver 0.0.0.0:7000
```

Open `http://localhost:7000`.

## Project Layout

```text
manage.py                         Django command-line entry point
Hospital/                         Application models, views, templates, and static files
HospitalAppointment_BookingSystem/ Django project settings and URLs
assets/                           Screenshots and architecture diagram
Dockerfile                        Container build instructions
requirements.txt                  Python dependencies
db.sqlite3                        Local development database
```

## Data and Security Notes

The default configuration is for local learning and development. Before public deployment, set `SECRET_KEY` and `ALLOWED_HOSTS` through environment variables, disable `DEBUG`, use a production WSGI/ASGI server, and move SQLite data to a persistent volume or managed database.

## Screenshots

![Architecture](assets/project-diagram.png)

![Patient dashboard](assets/apppatient.png)

![Doctor dashboard](assets/appdoctor.png)
