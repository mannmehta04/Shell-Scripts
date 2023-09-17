echo "Enter Number 1"
read num1
echo "Enter Number 2"
read num2

echo "Select your Operation:"
echo "1. Addition"
echo "2. Subtract"
echo "3. Multiply"
echo "4. Divide"
read var

case "$var" in
   "1") echo "$num1 + $num2 = $(($num1+$num2))" ;;
   "2") echo "$num1 - $num2 = $(($num1-$num2))" ;;
   "3") echo "$num1 * $num2 = $(($num1*$num2))" ;;
   "4") echo "$num1 / $num2 = $(($num1/$num2))" ;;
   "*") echo "Invalid Operation" ;;
esac
