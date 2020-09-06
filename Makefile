build:
	sudo docker build --tag nginx .
	
run: 
	sudo docker run -p 8000:80 nginx
	
check:
	sudo hadolint Dockerfile
	sudo snap install tidy
	sudo tidy -q -e static/*.html

install: 
	sudo apt install make
	sudo snap install docker
				
