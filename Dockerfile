FROM python:3.12-slim

WORKDIR /app

COPY . /app

# 安装项目依赖和 uv
RUN pip install --no-cache-dir -e . uv

EXPOSE 8080

CMD ["uv", "run", "main.py"]
