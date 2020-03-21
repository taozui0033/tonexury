function _getNumber {
	local n=$(ls -a | wc -l)
	let n=$n-2	
	echo $n
}

echo "Please enter how many files in this path:"
r=0

while [[ $r -eq 0 ]]
do

read fileno

while [[ $fileno == *[!0-9]* ]];
do
	echo "Please enter a number:"
	read fileno
done

if [[ $(_getNumber) -eq  $fileno ]]
then
	echo "Congrats! You are right, it is $fileno"
	let r=1
elif [[ $(_getNumber) -gt  $fileno ]]
 then
	echo "It is too low.Please enter it again:"
 else
	echo "it is too high.Please enter it again:"
 fi
done
