# Benutzung des cacher Images

Zu cachendes Volume als Volume (auch mit Schreibschutz) mit Ziel `/data` angeben und Instanz bei Bedarf ausführen.


**WICHTIG: IMMER MIT 0 REPLICAS EINBINDEN UND DANN NUR BEI BEDARF MANUELL AUFRUFEN**


## Beispielkonfiguration (docker-compose.yaml)

```yaml
cacher:
    image: 'registry.n4group.eu/n4de/cacher:latest'
    deploy:
      replicas: 0
    volumes:
      - <VOLUME>:/data:ro
```