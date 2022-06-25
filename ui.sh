OPTIONS="Hello Quit Make"
select opt in $OPTIONS; do
    if [ "$opt" = "Quit" ]; then
     echo done
     exit
    elif [ "$opt" = "Hello" ]; then
     echo Hello World
    elif [ "$opt" = "Make" ]; then
        echo "Make a new file"
        # take input
        read -p "Enter file name: " filename
        # create file
        touch $filename
    fi
    done

    else
     clear
     echo bad option
    fi
done