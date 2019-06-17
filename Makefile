build:
	docker-compose build

clean:
	docker-compose stop
	docker-compose rm -f

run: clean build
	docker-compose up
