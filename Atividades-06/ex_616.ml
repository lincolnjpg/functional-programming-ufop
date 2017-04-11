let rec fib n2 n1 n =
  if n = 0 || n = 1 then
    n1
  else
    fib n1 (n2 + n1) (n - 1)
    
let fibonacci n =
  fib 1 1 n