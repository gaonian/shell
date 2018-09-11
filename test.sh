#!/bin/sh

#pgrep -l Google

# for temp in `pgrep -l Google`
# do
#   echo $temp
#   break
# done 

# sed -i "" "s/fd/哈哈/g" file.txt

echo `pwd`

path="testName"
[ -d "$path" ] || mkdir -p $path
for i in `seq 10`; do
	sudo touch $path/$i.txt
done

cd testName
for i in `seq 10`; do
	a="${i}.txt"
	b="${i}.extension.TXT"
	echo $a , $b
	sudo mv $a $b
done

cd testName
for i in `ls`; do
	a=${i/.extension/}
	sudo mv $i $a
done


