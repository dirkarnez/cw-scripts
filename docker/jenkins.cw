{
	"name": "jenkins", 
	"commands": [
		{
			"command": "docker run --rm -p %1%:8080 -p %2%:50000 -v %3%:/var/jenkins_home jenkins/jenkins:lts",
			"parameters": [
				{
					"default": 3306,
					"displayName": "web port",
					"description": "8080"
				},
				{
					"default": 50000,
					"displayName": "slave port",
					"description": "Attach build slave servers through JNLP (Java Web Start)"
				},
				{
					"default": "jenkins_home",
					"displayName": "volume",
					"description": "Will survive the container stop/restart/deletion"
				},
				
			]
		}
	]
}
