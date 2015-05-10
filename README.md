# Pipeline

An example Nim macro that creates a pipeline operator (ie, Elixir, FSharp).
For example, a function call `foo(bar(1), "baz")` can be written as
`bar(1) |> foo("baz")`

## Example

```nim
import pipeline

proc times(a, b: int) : int =
  result = a * b

proc plus(a, b: int) : int =
  result = a + b

echo plus(10,2) |> 
     times(2)   |>
     plus(1)
```
