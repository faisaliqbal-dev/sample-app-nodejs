Project: Node.js Application CI/CD with Docker, Jenkins, and SonarQube

Description:
This project implements a complete CI/CD pipeline for a Node.js application using Jenkins, Docker, and SonarQube. The pipeline automates code integration, build, testing, containerization, and deployment.

Key Features:

Version Control: Source code managed using Git.

Pipeline Steps: Jenkins pipeline includes steps for code checkout, Node.js installation, build, unit tests, SonarQube code analysis, Docker login, and automated deployment.

Code Quality: SonarQube runs on a separate EC2 instance using Docker to perform static code analysis and ensure high-quality code.

Containerization: Custom Dockerfile used to containerize the Node.js application for consistent deployments.

Automated Deployment: Application deployed on a Jenkins EC2 server using Docker containers.

Infrastructure Management: EC2 instances and SonarQube server provisioned via Terraform, including creation of custom security groups to allow proper communication between Jenkins and SonarQube servers.

Environment: Jenkins on a t2.medium EC2 instance, SonarQube running in a Docker container on a separate EC2 instance.

Outcome:

Streamlined CI/CD workflow for Node.js applications.

Automated testing, code quality checks, and deployment.

Efficient containerized deployment using Docker.

Infrastructure as code implemented with Terraform for reproducibility and scalability.
