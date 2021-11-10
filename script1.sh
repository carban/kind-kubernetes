#!/bin/sh
#Author: Carban

user='carbanx'

kubectl create deployment redis --image=redis
for service in hasher rng webui worker; do
	kubectl create deployment $service --image=$user/"pge_$service"
done
