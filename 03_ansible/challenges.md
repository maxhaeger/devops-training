## Aufgabe 1: Infrastruktur aufsetzen

1. Erstelle ein Vagrantfile mit:
   - 1 Jump Host (Ubuntu)
   - 2 Target Hosts (Ubuntu)
   - Privates Netzwerk
2. Starte die VMs
3. Installiere Ansible auf dem Jump Host

## Aufgabe 2: Inventory erstellen

1. Finde die IP-Adressen der Target Hosts
2. Erstelle eine erste Inventory-Datei
3. Teste die Verbindung mit ansible ping
4. Füge notwendige Verbindungsparameter hinzu:
   - SSH User
   - SSH Passwort/Key
   - Gruppen

## Aufgabe 3: Erstes Playbook

1. Erstelle ein Playbook das:
   - Systemupdates durchführt
   - htop installiert
   - Hostname setzt
2. Führe es gegen einen Host aus
3. Erweitere es für alle Hosts

## Aufgabe 4: Gruppen und Variablen

1. Erstelle Gruppen im Inventory
2. Definiere Gruppenvariablen
3. Nutze die Variablen im Playbook
4. Teste unterschiedliche Inventory Formate:
   - INI
   - YAML

## Aufgabe 5: Facts und Debugging

1. Sammle Systeminformationen mit setup
2. Nutze Debug Module
3. Registriere Task-Ergebnisse
4. Arbeite mit Conditions

## Hilfreiche Befehle

```bash
# Inventory testen
ansible-inventory --list
ansible-inventory --graph

# Verbindung testen
ansible -m ping all

# Playbook ausführen
ansible-playbook -i inventory playbook.yml

# Debug
ansible-playbook playbook.yml -v
```
