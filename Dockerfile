FROM python:3.10
WORKDIR /opt/flaskapp
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD ["python3", "-m" , "flask", "--app", "src", "run", "--host=0.0.0.0", "--debug"]