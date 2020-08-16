[
  {
    "name": "tomcat-app",
    "image": "${docker_image_url_tomcat}",
    "cpu": 1,
    "memory": 1024,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 0 
      }
    ]
  }
]