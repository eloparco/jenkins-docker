SHELL = bash
.PHONY: run stop build show_psw

run:
	docker stop jenkins &> /dev/null | true
	docker run -d --rm \
		-p 9090:8080 \
		-v jenkins_home:/var/jenkins_home \
		-v /var/run/docker.sock:/var/run/docker.sock \
		--name jenkins eloparco/jenkins

stop:
	docker stop jenkins

build:
	docker build -t eloparco/jenkins .

show-psw:
	@echo -n "Initial admin password: "
	@docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword