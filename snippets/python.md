# Python

## Basics

```
def hello(input: str):
    if input == "hello":
        result = 0
    elif input == "world":
        result = 1
    return result
```

## List comprehensions

```py
# yanks all non-empty lines from the input file into a list
[line.strip() for line in input.splitlines() if line.strip()]
```

