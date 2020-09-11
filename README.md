# Capstone-Project

## This is the final project of my Udacity Cloud Engineering Nanodegree Program

### Application Properties

  Deployment Type - Rolling Deployment
  
  Applicaiton - Nginx with customized index.html file

## TECHNOLOGIES USED

- JENKINS
- ANSIBLE
- KOPS (Kubernetes Operations)
- DOCKER

### DOCKER

  Docker is used to create the latest image from the Dockerfile inside the Github repo
  
  The latest image is then pushed to Docker hub.
  
### Jenkins Stages
   
   Build - Build docker image and update the latest version of docker image on docker hub
   
   Lint - Linting the Dockerfile using hadolint
          Linting the HTML file using tidy
          
   run production - Creates service for exposing the nginx applicaiton
   
   run development - Pulls the latest image of Capstone Project from Docker hub
                     Creates a new deployment using the updated docker image
                     
 ### Ansible 
 
 Ansible is used to control different instances and update them using rolling deployment.
 
 New user 'ansadmin' is added on instance and ssh is configured for machines.
 
 
 ### Kops (Kubernetes Operations)
 
 Kubernetes Operations is used to create cluster containing two nodes and one master node.
 
 Cluster named capstone.in is created which is connected to s3 storage s3://capstone.project.
 
 
 ## STEPS TO MAKE A SIMILAR PROJECT 
 
 ### 1. Clone the repository
 
 ```
 git clone https://github.com/rajas2716/Capstone-Project
 ```
 
 ### 2. Create 2 instances on cloud 
 
 > First instance will be used as a control-server for controlling the client machines
 
 > Second instance will control all the cluster nodes and get commands from the control-server
 
 ### 3. Follow the steps in Source-Code
 
      1. Complete [configure-ansible.txt](https://github.com/rajas2716/Capstone-Project/blob/master/Source-Code/configure-ansible.txt)
      
      2. Complete [configure-jenkins.txt](https://github.com/rajas2716/Capstone-Project/blob/master/Source-Code/configure-jenkins.txt)
      
      3. Complete [create-cluster.txt](https://github.com/rajas2716/Capstone-Project/blob/master/Source-Code/create-cluster.txt)
      
      4. Complete [ansible-commands.txt](https://github.com/rajas2716/Capstone-Project/blob/master/Source-Code/ansible-commands.txt)
 
 
 ## Sample image of my application working        
 
 ![Application-functioning](https://github.com/rajas2716/Capstone-Project/blob/master/Application-Version-2.PNG)
