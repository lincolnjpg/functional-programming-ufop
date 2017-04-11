let rec produtoIntervalo numX numY =
  if numX > numY then
    1
  else if numX = numY then
    numX
  else
    produtoIntervalo (numX + 1) numY * numX
    
 let fatorial x =
  produtoIntervalo 1 x 
