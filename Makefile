all:
	sudo mkdir -p /home/jcheca/data/db /home/jcheca/data/wp
	docker compose -f ./srcs/docker-compose.yml up --build -d

down:
	sudo docker compose -f ./srcs/docker-compose.yml down --rmi all -v

clean:
	sudo rm -rf /home/jcheca/data/db /home/jcheca/data/wp

re: down clean all

ls:
	sudo docker image ls
	sudo docker ps
	sudo docker volume ls

prune:
	docker system prune -fa --volumes

.PHONY: all down clean re prune
