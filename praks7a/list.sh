#!/bin/bash

echo -n "Millise kataloogi kohta soovite informatsiooni"; read direcotry
names=$(ls -l$direcotry | awk '{if(NR>1print $9}')
type=$(ls -l $direcotry | awk '{if(NR>1)print substr ($0, 0, 2)}')
num=1
faile=0
kauste=0
linke=0

for type in $types; do
	if [ $type == '_' ]; then
		echo -n 'fail: '
		let faile++
	elif [$type == 'd' ]; then
		echo -n 'kaust: '
		let kauste++
	elif [ $type == 'l' ]; then
		echo -n 'link: '
		let linke++
		fi
	echo $names | cut -d ' ' -f$num
	let num++
done
echo "Selles kaustas on $faile faili, $kauste kausta ja $linke linki"
