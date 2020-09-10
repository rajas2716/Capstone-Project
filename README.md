# Capstone-Project
  Deployment Type - Rolling Deployment
  Applicaiton - Nginx with customized index.html file

# This is the final project of my Udacity Cloud Engineering Nanodegree Program

  Jenkins automation tool is used to create a pipeline containing multiple stages.
  
## Stages
   
   Build - Build docker image and update the latest version of docker image on docker hub
   
   Lint - Linting the Dockerfile using hadolint
          Linting the HTML file using tidy
          
   run production - Creates service for exposing the nginx applicaiton
   
   run development - Pulls the latest image of Capstone Project from Docker hub
                     Creates a new deployment using the updated docker image
                     
 ## Ansible 
 
 Ansible is used to control different instances and update them using rolling deployment.
 
 New user 'ansadmin' is added on instance and ssh is configured for machines.
 
 ## Kops (Kubernetes Operations)
 
 Kubernetes Operations is used to create cluster containing two nodes and one master node.
 
 Cluster named capstone.in is created which is connected to s3 storage s3://capstone.project.
