let rec calculaRaizQuadrada x limite =
  if x *. x > limite then
    x -. 1.0
  else
    calculaRaizQuadrada (x +. 1.0) limite
    
let raizQuadrada n =
  calculaRaizQuadrada 1.0 n 