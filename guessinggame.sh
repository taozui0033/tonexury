function _getNumber {
	local number=$(ls -l | wc -l)
	echo $number
}

echo "Please enter how many files in this path:"
r=0

while [[ $r -eq 0 ]]
do

read fileno

if [[ $(_getNumber) -eq $fileno ]]
then
	echo "Congrats! You are right, it is $fileno"
	let r=1
elif [[ $(_getNumber) -gt $fileno ]]
 then
	echo "It is too low.Please enter it again:"
 else
	echo "it is too high.Please enter it again:"
 fi
done
