#! /bin/sh

loaders="./bar.sh ./rocket.sh"

for i in $(seq 0 10); do
	clear

	for loader in $loaders; do
		source $loader $i 10
		echo
	done

	sleep 0.3
done
