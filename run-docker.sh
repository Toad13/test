#/bin/bash -x

if [ "$1" = "--ansible" ] 
then
	docker build -t ansible ./ansible/
	docker run -d -it  --name ansible ansible
	docker exec -it ansible sh
fi

if [ "$1" = "--terraform" ] 
then
	docker build -t terraform ./terraform/
	docker run -d -it --name terraform terraform
 	docker exec -it terraform sh
fi

if [ "$1" != "--terraform" ] && [ "$1" != "--ansible" ] 
then
	echo " usage ./run-docker.sh key"
fi