# #!/bin/bash

## 💲Everything Bash

you make directly write bash script in terminal or make file with extension `.sh` and run it with `bash file_name.sh` command.

```bash
bash file_name.sh
# also
./file_name.sh
```

1. [traditional Hello world script](./helloWorld.sh)

    ```bash
    #!/bin/bash
    echo "Hello World !"
    ```

2. *[`Variables`](./variable.sh)*
you can create variables directly in with name and value;
and use💲variable_name to access it.

    ```bash
    #!/bin/bash
    name="John"
    echo "Hello $name"
    ```

variable more examples

  ```bash
    #!/bin/bash
    mydate=$(date +%Y-%m-%d)
    echo "Today is $mydate"    
 ```

this will print the date in the format of `YYYY-MM-DD`,

- [ ] : you can use `date` command to get the date.
- [ ] : manuplate the previous cmd

3. *[`Conditional Statements`](./conditional.sh)*

start with `if` statement, and end with `fi`

```bash
#!/bin/bash
val="hello";
if [ $val == "hello" ]; then
    echo "Hello World"
fi
```

add more with else and elseif;

```bash
    #!/bin/bash
    if [ "foo" = "bar" ]; then
    echo "foo is equal to bar"
    elif [ "foo" = "baz" ]; then
    echo "foo is equal to baz"
    else
    echo "foo is not equal to bar or baz"
    fi
```

### 4. Loops while, for, until, until-do

*[`Looping Statements`](./loop.sh)*

#### While

start with `while` statement, and end with `done`

```bash
#!/bin/bash
val="null";
while [ $val == "hello" ]; do
    echo "Hello World"
done
```

> 🤔 guess the output

**simple tip :**
> keywords like **while**, **do**, **done**, **if**, **else**
> and many more the **RESERVED KEYWORDS** in bash should be in the same line, if they are then add **;**

```bash
#!/bin/bash
val="hello";
while [ $val == "hello" ]; do echo "Hello World"; done
```

<!-- for loops -->

#### For Loops

```bash
#!/bin/bash
for i in {1..10}; do
    echo "Hello World"
done

```

> here `{1..10}` is a range, of numbers from 1 to 10.
> a to z;

```bash
#!/bin/bash
for i in {a..z}; do
echo $i;
done
```

> there is also `until` with bash for making loops however you can use `while` instead.

### Arithematic Operators

```bash
echo $((1+1))
# do you math inside the brackets with 💲?
```

```bash
echo $[1+1]
# also this will work.
```

> i will update how can we use float with bash in the next section.

### Functions

As many other programming languages, bash too has functions, with you can group your code more logical way.

it's just `fn_name { my_code}`

```bash
#!/bin/bash
function hello() {
    echo "Hello World"
}
# hello
# Hello World
```

with parameter

```bash
#!/bin/bash
function add() {
    echo $(($1+$2))
}
```

[add.sh](./add.sh)
with bash you can use `$1` to get the first parameter, `$2` to get the second parameter, and so on.
as with this you don't need **declare** the parameter
**pretty osm**

### UI Interface

Under ui interface you can provide logic and conditional render to the user.

Like you can give the user a choice of what to do, and then you can do the logic.

```bash

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
```

i will soon add resources to understand **operator in bash** like `-eq` and all the other operators
**using OPTIONS**

```bash
#!/bin/bash
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
        ;;
    2)
        echo "Enter a file name"
        read -p "File name: " file
        rm $file
        ;;
    3)
        echo "Bye"
        exit
        ;;
    *)
        echo "Invalid choice"
        ;;
esac
```
