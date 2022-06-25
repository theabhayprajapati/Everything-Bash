
#!/bin/bash
echo "What do you want to do?"
echo "1. Add"
echo "2. Subtract"
echo "3. Multiply"
echo "4. Divide"
echo "5. Exit"
read -p "Enter your choice [1-5]: " choice
if [ $choice -eq 1 ]; then
    echo "Enter two numbers"
    read -p "First number: " num1
    read -p "Second number: " num2
    echo "The sum is $(($num1+$num2))"
elif [ $choice -eq 2 ]; then
    echo "Enter two numbers"
    read -p "First number: " num1
    read -p "Second number: " num2
    echo "The difference is $(($num1-$num2))"
elif [ $choice -eq 3 ]; then
    echo "Enter two numbers"
    read -p "First number: " num1
    read -p "Second number: " num2
    echo "The product is $(($num1*$num2))"
elif [ $choice -eq 4 ]; then
    echo "Enter two numbers"
    read -p "First number: " num1
    read -p "Second number: " num2
    echo "The quotient is $(($num1/$num2))"
elif [ $choice -eq 5 ]; then
    echo "Bye"
    exit
else
    echo "Invalid choice"
fi