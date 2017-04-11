let rec quocienteDivisao a b =
  if b = 0 then
    -1 (*Esse valor indica que nao foi possivel realizar a divisao*)
  else if a - b < 0 then
    0
  else
    quocienteDivisao (a - b) b + 1
    
let rec restoDivisao a b =
  if b = 0 then
    -1 (*Esse valor indica que nao foi possivel realizar a divisao*)
  else if a - b < 0 then
    a
  else
    restoDivisao (a - b) b 
