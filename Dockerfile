ARG PYTHON_VERSION=3.8

#---build stage---
FROM python:${PYTHON_VERSION}-slim-buster AS build

WORKDIR /app

COPY . .

RUN pip install --upgrade pip && pip install -r requirements.txt

RUN python manage.py migrate

#---run stage---
FROM python:${PYTHON_VERSION}-slim-buster

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=build /app .

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
