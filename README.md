# lab-data-engineering-course
Support pratique du cours de data engineering

# But
Ce lab contient toutes les ressources nécessaires aux parties pratiques du cours.

Il sera régulièrement mis-à-jour.

Suivant si vous êtes vous Windows ou sous Unix (Mac / Linux), vous aurez chacun un petit script permettant de facilement lancer toute la stack (jargon pour dire l'ensemble des logiciels et serveurs nécessaires).

# Script de lancement 

```sh

help

start: start-front start-back start-db-transac start-kafka start-dbt start-db-analytics start-...
stop: stop-front stop-...

start-front:
    docker-compose -f transac/docker-compose.yml up

```