# whatweb
Hiermit wird der WhatWeb Website Scanner als Docker-Container auf einem System installiert und genutzt. 

## Voraussetzungen
Folgendes muss vorab auf dem System installiert sein (oder installiert werden):
- Docker
- Docker Compose
- Git

## Installation
1. Wechsle in das Verzeichnis, in welches du das Repository von Github clonen willst:
   ```bash
   cd /pfad/wohin/du/clonen/willst
   ```

2. Repository clonen:
   ```bash
   git clone https://github.com/sdt-80/whatweb.git
   cd whatweb
   ```
   
3. Docker-Image aus Dockerfile bauen:
   ```bash
   docker build -t whatweb .
   ```
   Je nach Systemkonfiguration kann es zu DNS-Fehlern kommen. In dem Fall stattdessen den Build hiermit erstellen:
   ```bash
   docker build --network=host -t whatweb .
   ```
   Es kann ein wenig dauern, bis der Build fertig ist. 

## Nutzung des erstellten Docker Images
Nun kann das erstellte Docker Image mit Docker Compose gestartet / genutzt werden. Hiefür gibt es zwei Möglichkeiten:
1. Nutzung via docker-compose.yml
   Öffne die Datei docker-compose.yml. Ersetze dort die URL https://example.com durch die URL der Website, die analysiert werden soll.
   Nutze dann im whatweb Verzeichnis den folgenden Befehl, um die Seite zu analysieren:
   ```bash
   docker compose up
   ```
   Hinweis: die Analyse kann je nach Seite eine Weile dauern.
   
2. Nutzung via Docker Compose CLI Befehl. Hierzu im folgenden Befehl die URL https://example.com durch die URL der Website ersetzen, die analysiert werden soll. Der Befehl selbst muss im whatweb Verzeichnis ausgeführt werden:
   ```bash
   docker compose run --rm whatweb -v -a 3 https://example.com
   ```
   Hinweis: die Analyse kann je nach Seite eine Weile dauern.
