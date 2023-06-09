FROM python:3.11.3-bullseye

LABEL org.opencontainers.image.source="https://github.com/halon176/4sib-web"

ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD gunicorn django_project.wsgi --bind 0.0.0.0:8000 --log-file -