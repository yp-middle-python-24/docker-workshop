build:
	docker compose -f docker-compose.yml build

build-devel:
	docker compose -f docker-compose.yml -f docker-compose.devel.yml build

runserver:
	docker compose -f docker-compose.yml -f docker-compose.devel.yml up

runserver-uvicorn:
	docker compose -f docker-compose.yml up

test:
	docker compose -f docker-compose.yml -f docker-compose.devel.yml -f docker-compose.tests.yml run --rm exam-app /app/src/start-tests.sh

