FROM python:3.7.7-slim-buster

WORKDIR /app
COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .

EXPOSE 5000
CMD python app.py
