#!/bin/bash

echo -n "Sisesta positiivne tais arv: "; read arv
match=0

for (( num=1; num<=$arv; num++ ))
do
	jaak=$(($arv % $num))
	if [ $jaak == 0 ]; then
	let match++
	fi
done
if (( $match <== 2 ));then
	echo "$arv - on algarv"
else
	echo "$arv - ei ole algarv"
fi

for (( num=1; num<=20; num++))
do
jaak=$(($num % $div))
if ((jaak == 0)); then
let jagub++
fi
done
if (( jagub <= 2)); then
echo "$num-on algarv"
fi
done
