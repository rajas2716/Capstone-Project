build:
	sudo su
	docker build --tag nginx .
	
run: 
	sudo su
	docker run -p 8000:80 nginx
	
check:
	sudo su
	hadolint Dockerfile
	tidy -q -e static/*.html

install:
	sudo su 
	apt install make
	snap install docker
	wget https://github.com/hadolint/hadolint/releases/download/v1.18.0/hadolint-Linux-x86_64
	mv hadolint-Linux-x86_64 hadolint
	chmod 777 hadolint
	mv hadolint /usr/local/bin
	snap install tidy

all: install check build run				
				
