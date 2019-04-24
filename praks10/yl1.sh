#!/bin/bash
#

echo -n "Sisesta oma vanus $vanus: "
read vanus
if [ $vanus -le 11 ]; then
	echo "Oled laps"
elif [ $vanus -le 18 ]; then
	echo  "Oled nooruk"
elif [$vanus -le 63 ]; then
	echo "Oled taiskasvanu"
elif [ $vanus -ge 64 ]; then
	echo "Oled senjoor"
else "vigane sisend"
fi

