build:
	ansible-playbook -i all /etc/ansible/hosts /home/ansadmin/ansible-create-docker-image.yml
	
run-production: 
	ansible-playbook -i all /home/ansadmin/hosts /home/ansadmin/ansible-create-service.yml

run-development:
	ansible-playbook -i all /home/ansadmin/hosts /home/ansadmin/ansible-create-deployment.yml
	
check:
	hadolint Dockerfile
	tidy -q -e static/*.html
	
all: check build run				
		
