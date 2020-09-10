build:
	ansible-playbook /home/ansadmin/ansible-create-docker-image.yml
	
run-production: 
	ansible-playbook ansible-create-service.yml

run-development:
	ansible-playbook ansible-create-deployment.yml
	
check:
	hadolint Dockerfile
	tidy -q -e static/*.html
	
all: check build run				
		
