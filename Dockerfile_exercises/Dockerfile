FROM python:latest
WORKDIR /app
COPY python-server.py /app/
RUN pip install flask
EXPOSE 8080
CMD [ "python", "python-server.py" ]