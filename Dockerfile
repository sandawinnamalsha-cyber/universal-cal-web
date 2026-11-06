FROM python:3.12-slim
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 7860
CMD ["flet", "run", "--web", "--port", "7860", "main.py"]
