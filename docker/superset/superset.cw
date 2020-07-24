docker run --rm -d -p 8088:8080 --name superset preset/superset
docker cp superset_config.py superset:/app/pythonpath
docker exec -it superset superset fab create-admin --username admin --firstname Superset --lastname Admin --email admin@superset.com --password admin
docker exec -it superset superset db upgrade
docker exec -it superset superset load_examples
docker exec -it superset superset init