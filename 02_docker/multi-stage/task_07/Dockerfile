FROM ubuntu:20.04
RUN echo "Debugging: Installiere wichtige Pakete"
RUN apt-get update && \
    apt-get install -y \
    curl \
    wget \
    && rm -rf /var/lib/apt/lists/*
RUN echo "Debugging: Überprüfe Inhalt des Arbeitsverzeichnisses"
RUN ls -l
COPY . /app
WORKDIR /app
RUN echo "Debugging: Anwendungsdateien kopiert"
CMD ["python", "hello.py"]