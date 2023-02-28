FROM python:3.8
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
WORKDIR /js-fastapi-monitoring
COPY . /js-fastapi-monitoring
EXPOSE 80
CMD ["uvicorn", "app.api:app", "--host", "10.10.1.27", "--port", "80"]
