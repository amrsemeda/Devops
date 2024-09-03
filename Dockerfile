# uses image of python
FROM python:3-alpine  

#Creates Work Directory
WORKDIR /app

#adds all your project files inside the image (very important)
COPY . .

RUN pip install -r requirements.txt

EXPOSE 8080

#Only last CMD gets executed 
CMD [ "python3", "main.py" ]
CMD [ "gunicorn", "-b", "0.0.0.0:8080", "wsgi" ]