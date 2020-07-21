{
	"name": "shutdown",
	"command": "shutdown -s -f -t %1%",
	"parameters": [
		{
			"variables": [
				{
					"name": "hour",
					"displayName": "hour",
					"description": "",
					"default": "0"
				},
				{
					"name": "minute",
					"displayName": "minute",
					"description": "",
					"default": "0"
				},
				{
					"name": "second",
					"displayName": "second",
					"description": "",
					"default": "0"
				}
			],
			"evaluate": "(hour * 60 * 60) + (minute * 60) + second"
		}
	]
}