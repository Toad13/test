#/bin/bash -x

if [ "$1" = "--ansible" ] 
then
	docker build -t ansible ./ansible/
	docker run -d -it --rm --name ansible -v $(pwd)/keys:/root/.ssh -v $(pwd)/ansible/playbook:/root/playbook -w /root/ ansible
	docker exec -it ansible /bin/bash
fi

if [ "$1" = "--terraform" ] 
then
	docker run -d --rm -it --name terraform --entrypoint "/usr/bin/tail" -v $(pwd)/terraform:/workspace -w /workspace -v $(pwd)/keys:/root/.ssh hashicorp/terraform:light sh tail -f /dev/null
 	docker exec -it terraform sh
fi

if [ "$1" != "--terraform" ] && [ "$1" != "--ansible" ] 
then
	echo " usage ./run-docker.sh key"
	echo " --ansible - run ansible container"
	echo " --terraform - run terraform container"
fi
