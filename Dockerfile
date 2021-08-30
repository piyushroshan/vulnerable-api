FROM python:3.8.8-slim
WORKDIR /usr/src/app
COPY openapi ./openapi
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY vAPI.py .
COPY vAPI.db .
EXPOSE 8081
CMD [ "python", "./vAPI.py" ]

