import unittest, pipeline

suite "pipeline operator":
  proc times(a, b: int) : int =
    result = a * b

  proc plus(a, b: int) : int =
    result = a + b

  test "single operator":
    let val = plus(10,2) |> times(2)

    check val == 24

  test "chain operator":
    let val = plus(10,2) |> times(2) |> plus(1)

    check val == 25

