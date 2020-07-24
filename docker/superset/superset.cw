{
	"name": "mariadb", 
	"commands": [
        {
            "command": "docker run --rm -d -p %1%:8080 --name superset preset/superset",
            "parameters": [
                {
                    "default": 8088,
                    "displayName": "port",
                    "description": ""
                }
            ]
        },
        {
            "command": "docker cp %1% superset:/app/pythonpath",
            "parameters": [
                {
                    "default": "{{SCRIPT_LOCATION}}/superset_config.py",
                    "displayName": "superset_config.py path",
                    "description": ""
                }
            ]
        },
        {
            "command": "docker exec -it superset superset fab create-admin --username %1% --firstname Superset --lastname Admin --email admin@superset.com --password %2%",
            "parameters": [
                {
                    "default": "admin",
                    "displayName": "username",
                    "description": ""
                },
                {
                    "default": "admin",
                    "displayName": "password",
                    "description": ""
                }
            ]
        },
        {
            "command": "docker exec -it superset superset db upgrade"
        },
        {
            "command": "docker exec -it superset superset load_examples"
        },
        {
            "command": "docker exec -it superset superset init"
        }
    ]
}