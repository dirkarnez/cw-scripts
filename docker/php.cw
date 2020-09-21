{
	"name": "php", 
	"commands": [
        {
            "command": "docker run -it --rm -p %1%:80 -v \"%%cd%%:/var/www/html\" php:7.2-apache",
            "parameters": [
				{
					"default": 80,
					"displayName": "port",
					"description": ""
				}
			]
        }
	]
}