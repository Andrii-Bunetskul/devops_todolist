ARG PYTHON_VERSION=3.8

#---build stage---
FROM python:${PYTHON_VERSION}-slim-buster AS build

WORKDIR /app

#---run stage---
FROM python:${PYTHON_VERSION}-slim-buster

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=build /app .

RUN pip install --no-cache-dir -r requirements.txt && \
    python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
