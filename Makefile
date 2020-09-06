build:
	docker build --tag nginx .
	
run: 
	docker run -p 8000:80 nginx
	
check:
	hadolint Dockerfile

all: check build run				
				
