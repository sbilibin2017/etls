# Infrastructure for etl service

[domain description](https://github.com/sbilibin2017/data_provider/blob/master/README.ru.md)

## Elements
* airflow id docker compose
* databases in docker compose 

|database|description|
|---|---|
|kafka|bus that receives data from [data provider](https://github.com/sbilibin2017/data_provider)|
|postgres|admin panel for forecasts|
|clickhouse|analytical dashboards for games and users|
|mongo|dictionaries with team and player profiles for ML service|
|elasticsearch|fulltext search for games, players, teams, maps|

## Tecnologies
* airflow
* docker, docker-compose
* poetry

## Instruction
1. clone repository
2. create .env from [.env.example](./.env.example)
3. make dub
4. airflow dashboard: http://localhost:8080/home

* make commands

|command|description|
|---|---|
|dub|docker compose build and up all infrastructure|
|dd|docker compose down all infrastructure|
|dp|prune docker containers and docker volumes|


