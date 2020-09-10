build:
	ansible-playbook -i all hosts ansible-create-docker-image.yml
	
run-production: 
	ansible-playbook -i all hosts ansible-create-service.yml

run-development:
	ansible-playbook -i all hosts ansible-create-deployment.yml
	
check:
	hadolint Dockerfile
	tidy -q -e static/*.html
	
all: check build run				
		
