SERVICE = console

convert: build
	docker-compose run --rm $(SERVICE) /bin/ash make.ash

build:
	docker-compose build

shell:
	docker-compose run --rm $(SERVICE) /bin/ash
