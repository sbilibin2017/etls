all: dp dub dd

dp:
	docker container prune -f
	docker volume prune -f
	docker volume rm etls_clickhouse_data
	docker volume rm etls_postgres-db-volume
	docker volume rm etls_postgres_data
	docker volume rm etls_mongo_data
	docker volume rm etls_kafka_data
	docker volume rm etls_elastic_data

dub:
	docker compose --env-file .env -f docker-compose.infra.yaml up --build -d
	docker compose --env-file .env -f docker-compose.airflow.yaml up --build -d

dd:
	docker compose --env-file .env -f docker-compose.infra.yaml down
	docker compose --env-file .env -f docker-compose.airflow.yaml down