# Hello World Express App with Kubernetes Deployment and Prometheus Monitoring
This project demonstrates the deployment of a simple Express.js "Hello World" application on a Kubernetes cluster, along with Prometheus monitoring.

Components
1. Hello World Express App: A simple Express.js application that responds with "Hello, World!" when accessed.

2. Dockerization: The Express app is containerized using Docker and pushed to a Docker registry with the tag petenelson22/hello-world-express:v1.

3. Kubernetes Manifest: A Kubernetes manifest file (hello-world-express-deployment.yaml) is created to deploy the Dockerized app to a Kubernetes cluster.

4. Terraform Deployment: Terraform is used to deploy the Kubernetes manifest, automating the deployment process.

5. Prometheus Monitoring: The kube-prometheus-stack Helm chart is utilized to set up monitoring and observability for the Prometheus cluster.

Prerequisites
Before getting started, ensure you have the following installed:

- Docker
- Kubernetes cluster (e.g., Minikube, kind)
- Helm
- Terraform
