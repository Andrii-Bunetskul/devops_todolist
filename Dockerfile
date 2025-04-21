FROM python:3.8

WORKDIR /app

RUN pip install -r requirements.txt
RUN python manage.py migrate
RUN python manage.py runserver

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
