echo "Please enter how many files in this path:"

r=0
while [[ $r -eq 0 ]]
do

read fileno

if [[ 8 -eq $fileno ]]
then
	echo "Congratulate! You are right, it is $fileno"
	let r=1
elif [[ 8 -gt $fileno ]]
 then
	echo "It is too low.Please enter it again:"
 else
	echo "it is too high.Please enter it again:"
 fi
done
