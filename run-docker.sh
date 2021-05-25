#/bin/bash -x

if [ "$1" = "--ansible" ] 
then
	docker build -t ansible ./ansible/
	docker run -d -it --rm --name ansible -v $(pwd)/keys:/root/.ssh ansible
	docker exec -it ansible /bin/bash
fi

if [ "$1" = "--terraform" ] 
then
	docker build -t terraform ./terraform/
	docker run -d -it --rm --name terraform -v $(pwd)/keys:/root/.ssh terraform
 	docker exec -it terraform /bin/bash
fi

if [ "$1" != "--terraform" ] && [ "$1" != "--ansible" ] 
then
	echo " usage ./run-docker.sh key"
	echo " --ansible - run ansible container"
	echo " --terraform - run terraform container"
fi
