## Anforderungen:

- Erstelle für jedes Oberthema (docker-compose & multi-stage-build) einen eigenen Ordner und für jede Aufgabe einen Unterordner.
- Nutze Volume/Bind-Mounts, um die benötigten Dateien in den jew. Container zu kopieren.
- Nutze die von mir bereitgesteööten Testdatein im [testfiles](./testfiles/) Ordner als Apps in deinen Mulsti-Stage-Builds.
- Manche Dateien wie z.B die nginx.con solltest du selbst erstellen, die kanns

## Docker Compose:
Nutze docker-compose um einfache Container aufzusetzen. Wichtig ist, dass du yaml dafür nutzt.


### Aufgabe 1: Einfacher Build
Erstelle eine YAML-Datei namens docker-compose.yml, die einen einfachen Docker-Build für eine Webseite beschreibt. 
Webseite befindet sich im aktuellen Verzeichnis und enthält nur HTML-Dateien. Verwende das offizielle "nginx" 
Docker-Image und stelle sicher, dass die Webseite auf Port 80 in den Container gemappt wird.

### Aufgabe 2: Anpassung des Builds
Nimm die Docker-Image-Version von Aufgabe 1 und passe die YAML-Datei an, um eine benutzerdefinierte 
Konfigurationsdatei nginx.conf aus deinem aktuellen Verzeichnis in den Container zu kopieren. Die Konfigurationsdatei sollte im Containerpfad /etc/nginx/conf.d/ liegen.


### Aufgabe 3: Mehrere Services
Erweitere die YAML-Datei aus Aufgabe 2, um einen zweiten Service hinzuzufügen.Verwende das "alpine" 
Docker-Image und nenne den Service "data-service". Dieser Service sollte das aktuelle Verzeichnis 
als Volume im Container mounten.


### Aufgabe 4: Umgebungsvariablen
Aktualisiere die YAML-Datei aus Aufgabe 3, um Umgebungsvariablen für den "nginx" Service hinzuzufügen. 
Definiere eine Umgebungsvariable mit dem Namen "SERVER_NAME" und einem beliebigen Wert deiner Wahl.


### Aufgabe 5: Netzwerkkommunikation
Füge deinem Docker Compose-Setup aus Aufgabe 4 eine Netzwerkdefinition hinzu. Benenne das Netzwerk 
"my-network". Aktualisiere die Service-Definitionen, damit sie diesem Netzwerk beitreten.



# Multi-Stage-Builds:
## Aufgabenstellung:
Nutze Dockerbuild um sog. Multi-Stage-Builds zu erstellen. Die dazu benötigten Dateien 
befinden sich im Ordner [testfiles](./testfiles/).
Recherchiere dazu, was Multi-Stage-Builds sind und wie sie funktionieren und warum man sie 
verwenden sollte im Gegenzug zu normalen Builds.



### 1. Einfaches Multi-Stage Dockerfile:
Erstelle ein einfaches Dockerfile für eine beliebige Anwendung 
(z. B. ein "Hello World" Programm).
Verwende zwei Stufen: Eine für den Build-Prozess und eine für 
die Ausführung des Programms.


### 2. Python-Anwendung:
Erstelle ein Dockerfile für eine einfache Python-Anwendung, 
die eine Datei ausdruckt. Nutze Multi-Stage Builds, um das 
Python-Image zu optimieren.


### 3. Node.js-App mit Abhängigkeiten:
Erstelle ein Dockerfile für eine Node.js-Anwendung 
(z. B. ein einfaches Express.js-Serverprojekt).
Nutze zwei Stufen, um die Abhängigkeiten zu 
installieren und die Anwendung zu starten.


### 4. Java-Anwendung:
Versuche, ein Dockerfile für eine einfache Java-Anwendung 
zu erstellen (z. B. ein "Hello World" in Java).
Nutze Multi-Stage Builds, um den Build-Prozess effizienter 
zu gestalten.


### 5. Buildgröße optimieren:
Erstelle ein Dockerfile für eine Anwendung deiner Wahl und 
achte darauf, nur die benötigten Dateien und Abhängigkeiten einzufügen.
Vergleiche die Größe des finalen Images mit der eines 
herkömmlichen Builds, kopiere das Ergebnis hier rein:

| Image                | Size      |
|----------------------|-----------|
| unoptimized-go-build | 9.17 MB   |
| optimized-go-build   | 248.73 MB |

### 6. Einfache Webseite mit Nginx:
Erstelle ein Multi-Stage Dockerfile für eine einfache HTML-Webseite.
Verwende Nginx als Webserver in der finalen Stufe, um die Webseite 
zu hosten.


### 7. Debugging und Ausgabe:
Füge Debugging-Anweisungen (z. B. print-Anweisungen) in den Code 
deiner Anwendung ein.
Zeige, wie du die Ausgabe während des Build-Prozesses sichtbar 
machen kannst.

### 8. Docker Compose nutzen:
Erstelle eine einfache Docker Compose-Datei, um deine Multi-Stage 
Anwendung und ihre Abhängigkeiten zu starten.
