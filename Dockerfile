FROM python:3.10
WORKDIR /opt/app
COPY . /opt/app
RUN pip install -r requirements.txt
RUN chown -R www-data:www-data /opt/app
EXPOSE 3000
#CMD ["python3", "app.py" "runserver"]
CMD ["/opt/app/start.sh"]
