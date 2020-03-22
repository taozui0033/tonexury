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
#let fileno=$fileno | sed -r 's/0*([0-9])/\1/'

while [[ $((10#$fileno)) == *[!0-9]* ]];
do
	echo "Please enter a number:"
	read fileno
done

if [[ $(_getNumber) -eq  $((10#$fileno)) ]]
then
	echo "Congrats! You are right, it is $fileno"
	let r=1
elif [[ $(_getNumber) -gt $((10#$fileno)) ]]
 then
	echo "It is too low.Please enter it again:"
 else
	echo "it is too high.Please enter it again:"
 fi
done
