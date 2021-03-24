build:
	docker-compose build

stop:
	docker-compose down

deploy: stop
	docker-compose up -d

gc:
	docker-compose exec mlflow bash -c 'mlflow gc'

migrate:
	docker-compose run --rm mlflow bash -c 'mlflow db upgrade $$MLF_BACKEND_STORE'
