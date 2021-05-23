#!/bin/bash -x

if [ "$1" = "--ansible" ] 
then
	echo " запуск ansible контейнера"
fi

if [ "$1" = "--terraform" ] 
then
	echo " запуск terraform контейнера"
fi

if [ "$1" != "--terraform" ] && [ "$1" != "--ansible" ] 
then
	echo " usage ./run-docker.sh key"
fi