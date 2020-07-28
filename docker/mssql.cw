{
	"name": "mssql", 
	"commands": [
		{
			"command": "docker run --rm -it -p %1%:1433 -e ACCEPT_EULA=Y -e SA_PASSWORD=%2% mcr.microsoft.com/mssql/server:2019-latest",
			"parameters": [
				{
					"default": 1433,
					"displayName": "port",
					"description": ""
				},
				{
					"default": "password",
					"displayName": "SA_PASSWORD",
					"description": "is the database system administrator (userid = 'sa') password used to connect to SQL Server once the container is running. Important note: This password needs to include at least 8 characters of at least three of these four categories: uppercase letters, lowercase letters, numbers and non-alphanumeric symbols."
				}
			]
		}
	]
}