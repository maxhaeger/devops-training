# CI/CD Aufgaben

Es macht nicht unbedingt Sinn, alle CI/CD-Aufgaben in diesem Repository zu lösen, daher solltest du nur die fertige Pipeline-Sytax unter die jew. Aufgabe in dieser Datei zu kopieren, nutze dabei bitte die Codeblocks im Markdown-Format.
Für GitLab wäre es bspw. auch sinnvoll ein eigenes GitLap-Repository zu erstellen um alle Vorzüge von GitLab CI kennenzulernen und nutzen zu können.

## Jenkins (evtl. im Container oder direkt als Binary in WSL laufen lassen)

### Aufgabe 1: Einfache Pipeline

- Erstelle eine einfache Jenkins-Pipeline, die einen "Hello World"-Job ausführt.
- Verwende eine Jenkinsfile, um die Pipeline zu definieren.

### Aufgabe 2: Build und Test

- Erweitere die Pipeline, um eine einfache Anwendung (z.B. eine Python-App) zu bauen und zu testen.
- Füge einen Schritt hinzu, der einen Linter (z.B. pylint) ausführt.

### Aufgabe 3: Artefakte

- Konfiguriere die Pipeline so, dass sie Artefakte (z.B. kompilierte Binärdateien oder Testberichte) speichert.

### Aufgabe 4: Parallele Ausführung

- Modifiziere die Pipeline, um bestimmte Schritte parallel auszuführen.

### Aufgabe 5: Bedingungen und Verzweigungen

- Füge bedingte Ausführungen in deine Pipeline ein (z.B. nur bestimmte Schritte ausführen, wenn sich der Branch ändert).

## GitHub Actions

### Aufgabe 1: Einfacher Workflow

- Erstelle einen einfachen GitHub Actions Workflow, der bei jedem Push ausgelöst wird und eine Begrüßungsnachricht ausgibt.

### Aufgabe 2: CI für verschiedene Sprachen

- Erstelle separate Workflows für Python, Node.js und Java, die jeweils den Code bauen und testen. (Dafür darfst du gerne die Programme aus 02_docker/testfiles nehmen)

### Aufgabe 3: Pull Request Checks

- Konfiguriere einen Workflow, der automatisch Code-Qualitätschecks bei Pull Requests durchführt.

### Aufgabe 4: Container Build & Push Pipeline

- Konfiguriere einen Workflow, der eine Go-Binary basierend auf der uns bekannten hello.go unter 02_docker/testfiles erstellt sobald ein push
  auf euren Branch ausgeführt wird und der gebaute (und bestenfalls getestete) Container soll dann nach Dockerhub gepusht werden mit dem commit-Hash als
  Container-Tag damit eine Versionierung besteht.

## GitLab CI

### Aufgabe 1: Basis-Pipeline

- Erstelle eine .gitlab-ci.yml Datei mit einer einfachen Pipeline, die einen "Hello GitLab CI" Job ausführt.

### Aufgabe 2: Mehrere Stages

- Erweitere die Pipeline um mehrere Stages: Build, Test, und Deploy, nutze dafür die uns bekannten Apps aus 02_docker/testfiles der wahlweise auch eigene
  Programme.

### Aufgabe 3: Caching

- Implementiere Caching in deiner Pipeline, um die Build-Zeit zu reduzieren (z.B. für Node.js-Module oder Maven-Abhängigkeiten).

### Aufgabe 4: Umgebungsvariablen

- Verwende Umgebungsvariablen in deiner Pipeline, um sensitive Informationen zu schützen.

### Aufgabe 5: Docker Image Build und Push

- Füge einen Job hinzu, der ein Docker Image baut und es ins Dockerhub pusht.

## Bonus-Aufgabe: Vergleich der CI/CD-Tools

- Erstelle eine einfache Webanwendung (z.B. mit Flask oder Express.js).
- Implementiere den gleichen CI/CD-Prozess (Build, Test, Lint, Dockerize, Deploy) mit allen drei Tools (Jenkins, GitHub Actions, GitLab CI).
- Dokumentiere die Unterschiede und deine Erfahrungen in einer Markdown-Datei.

Stelle sicher, dass du für jede Aufgabe die notwendigen Konfigurationsdateien erstellst und in deinem Repository speicherst. Füge auch Kommentare hinzu, um deine Lösungen zu erklären.
