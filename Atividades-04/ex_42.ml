let numRaizes a b c =
  let disc = b ** 2.0 -. 4.0 *. a *. c in
  if disc > 0.0 then
    "Possui duas raizes reais"
  else if disc < 0.0 then
    "Nao possui raiz real"
  else
    "Possui uma raiz real" 
