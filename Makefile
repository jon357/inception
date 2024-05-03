all:
	sudo mkdir -p /home/jcheca/data/db /home/jcheca/data/wp
	docker compose -f ./srcs/docker-compose.yml up --build -d

down:
	sudo docker compose -f ./srcs/docker-compose.yml down --rmi all -v

clean:
	sudo rm -rf /home/jcheca/data/db /home/jcheca/data/wp

re: down clean all

.PHONY: all clean fclean re
