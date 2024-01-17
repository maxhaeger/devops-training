#!/bin/bash

# Verzeichnis, das gesichert werden soll
zu_sicherndes_verzeichnis="./wichtige_daten"

# Zielverzeichnis für Backups
zielverzeichnis="./backups"

# Erstelle einen Zeitstempel für das Backup
zeitstempel=$(date +"%Y-%m-%d_%H-%M-%S")

# Erstelle das Backup-Zielverzeichnis, falls es nicht existiert
mkdir -p "$zielverzeichnis"

# Benenne das Backup-Zielverzeichnis mit dem Zeitstempel
backup_verzeichnis="$zielverzeichnis/backup_$zeitstempel"

# Kopiere die Dateien/Verzeichnisse ins Backup-Zielverzeichnis
cp -r "$zu_sicherndes_verzeichnis" "$backup_verzeichnis"

echo "Backup erfolgreich erstellt: $backup_verzeichnis"
