FROM python:3.10

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000

CMD ["python", "app.py"]

# $ docker build -t taskflow-api:latest .
# $ docker run -p 5000:5000 taskflow-api:latest