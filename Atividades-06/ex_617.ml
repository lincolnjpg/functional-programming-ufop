let rec somaNumeros acumulador n =
  if n > 0 then    
    (print_endline "Informe um numero"; let num = read_int () in
     somaNumeros (acumulador + num) (n - 1))
  else
    acumulador  
    
let _ =
  print_endline "Informe a quantidade de numeros";
  let n = read_int () in
  somaNumeros 0 n 
