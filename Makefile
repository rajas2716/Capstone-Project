build:
	docker build --tag nginx .
	
run: 
	docker run -p 8000:80 nginx
	
check:
	hadolint Dockerfile
	sudo snap install tidy
	tidy -q -e static/*.html

install: 
	sudo apt install make			
