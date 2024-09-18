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


![image](https://github.com/user-attachments/assets/0fb26f09-9d4f-4d11-a817-dcfd34bfa3c3)
by command :

docker build -t your-backend-image:latest .

docker build -t your-proxy-image:latest .

docker tag your-backend-image:latest your-dockerhub-username/your-backend-image:latest
docker push your-dockerhub-username/your-backend-image:latest

docker tag your-proxy-image:latest your-dockerhub-username/your-proxy-image:latest
docker push your-dockerhub-username/your-proxy-image:latest

and Deployment the app  and start everything in script 

I created a simple shell script that creates everything and gave it some commands. If the namespace is not disabled, stop the shell.

![image](https://github.com/user-attachments/assets/1747d37e-8958-48ba-9398-467f6f2e7643)


after start shell 

![image](https://github.com/user-attachments/assets/bc581d64-f20b-43ff-a99a-0a7de6e03d00)


and check 

![WhatsApp Image 2024-09-18 at 16 42 46_aa736a73](https://github.com/user-attachments/assets/37ab924d-cbff-4488-90ed-df27a69e25c9)



# Done Thx 

