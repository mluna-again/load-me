#! /bin/sh

loaders="./bar.sh"

for loader in $loaders; do
	for i in $(seq 0 10); do
		source $loader $i 10
		sleep 0.3
	done
done
