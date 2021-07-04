ALL:
	docker-compose build
project:
	docker-compose run --rm app sh -c "django-admin startproject app ."
start:
	docker-compose up
stop:
	docker-compose down
migrations:
	docker-compose run --rm app sh -c "python manage.py makemigrations"
migrate:
	docker-compose run --rm app sh -c "python manage.py migrate"
chkdeploy:
	docker-compose run --rm app sh -c "python3 manage.py check --deploy"
test:
	docker-compose run --rm app sh -c "python manage.py test"
admin:
	docker-compose run --rm app sh -c "python manage.py createsuperuser"
coreapp:
	docker-compose run --rm app sh -c "python manage.py startapp core"
reset:
	rm app/core/migrations/*00*