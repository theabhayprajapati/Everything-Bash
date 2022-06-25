echo "What do you want to do?"
echo "1. Make a file"
echo "2. Delete a file"
echo "3. Exit"
OPTIONS="1 2 3"
read -p "Enter your choice [$OPTIONS]: " choice
case $choice in
    1)
        echo "Enter a file name"
        read -p "File name: " file
        touch $file
        echo "👍 File created: " ./$file
        ;;
    2)
        echo "Enter a file name"
        read -p "File name: " file
        rm $file
        echo "File deleted 🗳️:  " $file
        ;;
    3)
        echo "Bye"
        exit
        ;;
    *)
        echo "Invalid choice"
        ;;
esac