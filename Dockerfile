FROM python:3.8-slim-buster
RUN pip insatll flask
WORKDIR /app
COPY app.py  .
EXPOSE 5000
ENTRYPOINT [ "python", "app.py" ]