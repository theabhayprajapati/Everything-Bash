# #!/bin/bash

## 💲Everything Bash

    []: # Language: bash
    []: # Path: everything-bash.sh
    #!/bin/bash

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