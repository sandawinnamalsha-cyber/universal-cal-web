FROM python:3.12-slim
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["flet", "run", "--web", "--port", "8000", "main.py"]
