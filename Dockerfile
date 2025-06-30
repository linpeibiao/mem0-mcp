FROM python:3.8-slim

WORKDIR /app

COPY . /app

RUN pip install -e .

EXPOSE 8080

CMD ["uv", "run", "main.py"]
