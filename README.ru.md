# Инфраструктура для етл процессов сервиса

[описание доманной области](https://github.com/sbilibin2017/data_provider/blob/master/README.ru.md)

## Описание
* airflow и сопутствующая инфраструктура поднимается в докер компоузе
БД поднимаются в докер компоузе

|бд|описание|
|---|---|
|kafka|шина, которая принимает данные от [поставщика данных](https://github.com/sbilibin2017/data_provider)|
|postgres|админ панель прогнозов|
|clickhouse|дашборды аналитики игр и аналитики пользователей|
|mongo|словари с профилем игроков и команд для МЛ сервиса|
|elasticsearch|полнотекстовый поиск игр, команд, игроков, карт|


## Технологии
* airflow
* docker, docker-compose

## Интсрукция по развертыванию
1. клонировать репозиторий
2. создать .env из [.env.example](./.env.example)
3. make dub
4. airflow дашборд: http://localhost:8080/home

* make commands

|command|description|
|---|---|
|dub|docker compose build and up all infrastructure|
|dd|docker compose down all infrastructure|
|dp|prune docker containers and docker volumes|



