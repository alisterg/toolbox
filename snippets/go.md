# Go

## console.log

Log output   : `fmt.Println("got here")`  
With variable: `fmt.Printf("Variable: %v", variable)`


## Read file

```go
data, err := os.ReadFile(filename)
```

## Read file by line

```go
file, err := os.Open(filename)
if err != nil {
    return nil, err
}
defer file.Close()

var lines []string
scanner := bufio.NewScanner(file)
for scanner.Scan() {
    line := scanner.Text()
    lines = append(lines, line)
}
if err := scanner.Err(); err != nil {
    log.Fatalf("Error reading lines: %v", err)
}
```

## Date
