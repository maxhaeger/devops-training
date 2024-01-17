##### Aufgabenstellung:

Löse die untenstehenden Aufgaben und dokumentiere deine Lösungswege in Form von Kommentaren innerhalb der jeweiligen Bash Datei.
Es ist nicht zwingend nötig für jede Aufgabe/Skript eine eigene Datei zu erstellen, für die einfacheren Aufgaben reicht es aus, wenn die Lösungen
unter die Fragestellung schreibst.
Für die fortgeschrittenen Aufgaben solltest du jedoch eine eigene Datei erstellen und sie in einem separaten Lösungs-Ordner ablegen,
dieser Ordner ist bereits im geteilten GitHub Repository angelegt

##### Aufgabe 1: Grundlegende Befehle

    # Navigieren Sie zum Home-Verzeichnis.
    `cd ~`


    # Erstellen Sie ein neues Verzeichnis namens "CLI-Übung".
    `mkdir name`


    # Wechseln Sie in das neue Verzeichnis.
    `cd name`


    # Erstellen Sie eine leere Textdatei mit dem Namen "notizen.txt".
    `touch notizen.txt`


    # Listen Sie den Inhalt des Verzeichnisses auf, um sicherzustellen, dass die Datei erstellt wurde.
    `ls`


    # Hängen Sie den Text "Erste Notiz" an die Datei "notizen.txt".
    `echo "Erste Notiz" >> notizen.txt`


    # Zeigen Sie den Inhalt der Datei "notizen.txt" an.
    `cat notizen.txt`

##### Aufgabe 2: Datei- und Verzeichnisumbenennung

    # Benennen Sie die Datei "notizen.txt" in "meine_notizen.txt" um.
    `mv notizen.txt meine_notizen.txt`

    # Erstellen Sie ein neues Verzeichnis namens "Backup".
    `mkdir Backup`

    # Verschieben Sie die Datei "meine_notizen.txt" in das Verzeichnis "Backup".
    `mv meine_notizen.txt Backup`

##### Aufgabe 3: Dateisuche und Filterung

    # Wechseln zurück zum Home-Verzeichnis.
    `cd ~`

    # Erstellen mehrere Textdateien mit unterschiedlichen Namen und dem Text-Inhalt "wichtig"  mitfilfe einer for-Schleife
    `for i in `seq 1 10`; do echo "wichtig" > "datei_$i.txt"; done`

    # Suchen nach allen Dateien im Lösungs-Verzeichnis, die das Wort "wichtig" enthalten.
    `grep -rl "wichtig" ~/`

    # Lösche alle gefundenen Dateien.
    `grep -rl "wichtig" ~/`

##### Aufgabe 4: Pipelines und Befehlskombinationen

    # Erstelle eine Textdatei "zahlen.txt" und fügen Sie einige Zahlen (eine pro Zeile) ein.
    `for _ in $(seq 1 100); do echo $((RANDOM % 100 + 1)) >> "zahlen.txt"; done`

    # Filter die Datei "zahlen.txt" nach Zeilen, die größer als 50 sind.
    `awk '$1 <= 50' zahlen.txt > gefilterte_zahlen.txt`

    # Sortiere die gefilterten Zahlen in aufsteigender Reihenfolge.
    `sort -n gefilterte_zahlen.txt > sortierte_zahlen.txt`

    # Berechne die Summe aller Zahlen in der sortierten Liste.
    `awk '{ sum += $1 } END { print sum }' sortierte_zahlen.txt`

##### Aufgabe 5: Umgebungsvariablen und Befehlsparameter

    # Erstelle eine Umgebungsvariable namens "MEIN_NAME" und setzen Sie sie auf Ihren Namen.
    `export MEIN_NAME="Marc"`

    # Schreibe ein Shell-Skript mit dem Namen "begruessung.sh",
    # das "Hallo, <DEIN Name>!" ausgibt, wobei <DEIN NAME> durch den Wert
    # der gesetzten Umgebungsvariable ersetzt wird.
    `touch begruessung.sh`
    `
        #!/bin/bash
        echo "Halli $MEIN_NAME"
    `

    # Gebe dem Skript die Möglichkeit, einen Begrüßungstext
    # als Parameter zu akzeptieren, und passen Sie die Ausgabe entsprechend an. - dokumentiere auch deine Eingabe
    `
        #!/bin/bash
        BEGRUESSUNGSTEXT=${1:-"Hallo"}
        echo "$BEGRUESSUNGSTEXT $MEIN_NAME"
    `

##### Aufgabe 6: fortgeschrittene Skripte (bitte jeweils als eigene Datei speichern und in separatem Ordner ablegen)

    # Backup-Skript: Erstelle ein Skript, das automatisch Backups von
    # bestimmten Dateien oder Verzeichnissen erstellt. Du könntest eine
    # Zeitstempel- oder Versionsnummerkonvention verwenden, um die
    # Backup-Dateien zu benennen.

    # Wortzähler: Schreibe ein Skript, das die Anzahl der Wörter in einer
    # gegebenen Datei zählt und ausgibt.

    # Suche und Ersetze: Entwickle ein Skript, das eine bestimmte
    # Zeichenkette in einer Datei sucht und durch eine andere Zeichenkette
    # ersetzt.

    # Automatisierte Dateiverarbeitung: Schreibe ein Skript, das automatisch
    # Bilder in einem Verzeichnis verkleinert, um deren Dateigröße zu
    # reduzieren.

    # Passwortgenerator: Erstelle ein Skript, das zufällige Passwörter
    # generiert. Du könntest Parameter verwenden, um die Länge und die
    # Verwendung von Sonderzeichen anzupassen.

    # Textbasiertes Spiel: Kreiere ein einfaches textbasiertes Spiel,
    # bei dem der Spieler Entscheidungen treffen kann, die den Verlauf
    # der Geschichte beeinflussen - nutze dazu lediglich Variablen, echo, read, case, if & else Befehle und Abfragen
    # Tipp: Entscheidungen/Wahrscheinlichkeiten können über eine modulo (%) Funktion abgefragt werden

    # Systemüberwachung: Entwickle ein Skript, das wichtige
    # Systeminformationen wie CPU-Auslastung, Speicherbelegung und
    # angeschlossene Hardware anzeigt. - halte es einfach und so kurz wie möglich
