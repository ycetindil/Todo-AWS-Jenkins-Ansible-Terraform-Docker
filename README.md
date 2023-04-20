# Jenkins Pipeline for Web Page Application (Postgresql-Nodejs-React) deployed on EC2's with Ansible and Docker

## Description

This project aims to create a Jenkins pipeline to deploy web-page written Nodejs and React Frameworks on AWS Cloud Infrastructure using Ansible. Building infrastructure process is managing with control node utilizing Ansible. This infrastructure has 1 jenkins server (`Amazon Linux 2 AMI`) as ansible control node and 3 EC2s as worker node (`Red Hat Enterprise Linux 8 with High Availability`). These EC2s will be launched on AWS console. Web-page has 3 main components which are postgresql, nodejs, and react. Each component is serving in Docker container on EC2s dedicated for them. Postgresql is serving as Database of web-page. Nodejs controls backend part of web-side and react controls frontend side of web-page.

## Project Diagram

![image](Jenkins_Project.png)

## Initial Setup

- Install the Jenkins server by using the `Terraform-AWS-EC2-Jenkins-Docker-Ansible-Terraform-AWSCLIv2-Boto3-kubectl-Installed` repo.
- A backend for Terraform is used to provide consistency. For that purpose an S3 bucket should be created manually beforehand.

## Jenkins Server Setup

- Manage Jenkins > Manage Plugins > Available plugins > Install `Ansible` plugin.
- Manage Jenkins > Global Tool Configuration > Ansible > Add Ansible with the name `ansible` and path `/usr/bin/`.
- Manage Jenkins > Manage Credentials > System > Global credentials (unrestricted) > Add credentials with the kind `SSH username with private key`, ID `ssh_key`, enter directly the `SSH pem file contents`. This credential will be used by Ansible to connect and modify the EC2 instances.
- Create a pipeline named `todo-app` and select the **Pipeline from SCM** option.

## Notes

- Application can be reached by visiting the link provided in the Terraform outputs as `react_url`.
- The EC2 instances for the app require ECR access. This is given in the `main.tf` file.