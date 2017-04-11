let rec mediaAritmetica acumulador qtdeNumeros =
  let num = read_float () in
  if num >= 0.0 then
    mediaAritmetica (acumulador +. num) (qtdeNumeros +. 1.0)
  else
    if qtdeNumeros = 0.0 then
      qtdeNumeros
    else
      acumulador /. qtdeNumeros
    
let _ =
  print_endline "Calculo da media aritmetica";
  print_endline "Informe um numero por linha (para encerrar, informe um valor negativo)";
  let media = mediaAritmetica 0.0 0.0 in
  if media = 0.0 then
    print_endline "Sequencia vazia."
  else
    Printf.printf "A media aritmetica dos numeros informados eh: %f" media 
