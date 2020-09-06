build:
	docker build --tag nginx .
	
run-production: 
	docker run -d -p 8000:80 nginx

run-development:
	docker run -d -p 7000:80 nginx	
	
check:
	hadolint Dockerfile

all: check build run				
				
