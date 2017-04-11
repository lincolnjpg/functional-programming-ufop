let _ =
  print_endline "Analise de credito";
  print_endline "Informe seu salario bruto";
  let sal = read_float () in
  print_endline "Informe o valor da prestacao";
  let valorPrest = read_float () in
  if valorPrest > sal *. 0.3 then
    print_endline "Emprestimo nao pode ser concedido"
  else
    print_endline "Emprestimo pode ser concedido"
    
    
  