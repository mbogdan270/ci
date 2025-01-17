FROM python:2.7

# Add sample application
ADD application.py /tmp/application.py
COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt
RUN apt-get update
RUN pip install requests
RUN yes | apt-get install zip unzip

EXPOSE 8000

# Run it
ENTRYPOINT ["python", "/tmp/application.py"]
