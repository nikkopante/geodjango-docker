# About
A multi-container Docker image with Django and PostGIS.

## Use
1. Change dev.env variables.
2. Run `docker-compose build` to build the image.
3. Run `docker-compose up` to run the containers.
4. In another terminal run the migrate `docker-compose exec app python manage.py migrate`. This will initialize the user database.
5. Create a superuser `docker-compose exec app python manage.py createsuperuser`.