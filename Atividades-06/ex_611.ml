let rec potenciacao base expoente =
  if expoente = 1 then
    base
  else
    potenciacao base (expoente - 1) * base 
