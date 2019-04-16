FROM python:3-alpine
RUN pip install Django==2.2.0
RUN pip install gunicorn
RUN django-admin startproject app
ENV APP_NAME app
ENV APP_BIND 127.0.0.1:8000
ENV APP_WRKRS 5
WORKDIR /app
EXPOSE 8000
CMD gunicorn $APP_NAME.wsgi:application --bind $APP_BIND --workers $APP_WRKRS
