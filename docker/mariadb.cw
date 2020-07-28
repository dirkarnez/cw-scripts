{
	"name": "mariadb", 
	"commands": [
		{
			"command": "docker run --rm -it -p %1%:3306 -e MYSQL_ROOT_PASSWORD=%2% mariadb",
			"parameters": [
				{
					"default": 3306,
					"displayName": "port",
					"description": ""
				},
				{
					"default": "password",
					"displayName": "password",
					"description": "This variable is mandatory and specifies the password that will be set for the MySQL root superuser account."
				}
			]
		}
	]
}