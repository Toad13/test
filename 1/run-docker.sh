#/bin/bash -x

if [ "$1" = "--ansible" ]; then 
	docker build -t ansible ./ansible/
	docker run -d -it --rm --name ansible -v $(pwd)/keys:/root/.ssh -v $(pwd)/ansible/playbook:/root/playbook -w /root/ ansible
	docker exec -it ansible /bin/bash
	docker stop ansible
elif [ "$1" = "--terraform" ]; then
	docker build -t terraform ./terraform/
	docker run -d -it --rm --name terraform -v $(pwd)/keys:/root/.ssh -v $(pwd)/terraform/confdir:/root/confdir -w /root/ terraform
	docker exec -it terraform sh
 	docker stop terraform
elif [ "$1" != "--terraform" ] && [ "$1" != "--ansible" ];then
	echo " usage ./run-docker.sh key"
	echo " --ansible - run ansible container"
	echo " --terraform - run terraform container"
fi
