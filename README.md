# Project Summary

The project is a distributed application using Kubernetes. It consists of three tiers:

NGINX (Proxy): Acts as a reverse proxy server to route requests to the backend server.
Go Backend: A Go application that connects to a MySQL database and fetches data.
MySQL (Database): A MySQL database used to store data for the application.
Each tier is set up in Kubernetes using Deployments and Services, with ConfigMaps and Secrets for configuration and secure credential management.


# Project Requirements
Kubernetes Cluster: To run the containers and manage the application.
Docker: To build the images for the application.
kubectl: For managing Kubernetes resources.
Git: For version control and pushing changes to the GitHub repository.


Do not forget to push your Docker file on DockerHub, as I did exactly in the scripts. Please read carefully like this.

![image](https://github.com/user-attachments/assets/023491c9-ca1e-452c-9f7a-adca03bb9df8)


by command :

docker build -t your-backend-image:latest .

docker build -t your-proxy-image:latest .

docker tag your-backend-image:latest your-dockerhub-username/your-backend-image:latest
docker push your-dockerhub-username/your-backend-image:latest

docker tag your-proxy-image:latest your-dockerhub-username/your-proxy-image:latest
docker push your-dockerhub-username/your-proxy-image:latest

and Deployment the app  and start everything in script 

I created a simple shell script that creates everything and gave it some commands. If the namespace is not disabled, stop the shell.

![image](https://github.com/user-attachments/assets/00d2acb2-1a55-4bbf-97fc-eb4dbbcc3dbb)



after start shell 

![image](https://github.com/user-attachments/assets/53629513-18fa-40e7-b594-9b4dee87943c)



and check 

![image](https://github.com/user-attachments/assets/44cbaa85-89fa-4dc5-aa9c-72828fdfb948)




# Done Thx 

