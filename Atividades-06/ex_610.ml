let rec adicao x y =
  if (y = 0) then
    x
  else 
    adicao (succ x) (pred y) 
