# #!/bin/bash

## 💲Everything Bash
**
    []: # Language: bash
    []: # Path: everything-bash.sh
    #!/bin/bash**

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
**For Loops**

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
