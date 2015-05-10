import macros

macro `|>`* (left, right : expr): expr =
  result = newNimNode(nnkCall)

  case right.kind
  of nnkCall:
    result.add(right[0])
    result.add(left)
    for i in 1..<right.len:
      result.add(right[i])
  else:
    error("Unsupported node type")

