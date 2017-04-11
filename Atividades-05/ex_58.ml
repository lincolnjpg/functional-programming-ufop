let _ =
  print_endline "Opcoes";
  print_endline "-------------";
  print_endline "1 - Imposto";
  print_endline "2 - Novo salario";
  print_endline "3 - Classificacao";
  print_endline "-------------";
  print_endline "Informe a opcao desejada: ";
  let opcao = read_int () in
  
  print_endline "Informe o salario: ";
  let salario = read_float () in
  
  if opcao = 1 then
    (print_endline "Calculo do imposto";
    if salario < 500.0 then
      print_endline ("Imposto calculado: " ^ string_of_float (salario *. 0.05))
    else if salario >= 500.0 && salario <= 850.0 then
      print_endline ("Imposto calculado: " ^ string_of_float (salario *. 0.10))
    else
      print_endline ("Imposto calculado: " ^ string_of_float (salario *. 0.15)))
  else if opcao = 2 then
    (print_endline "Calculo do novo salario";
    if salario > 1500.0 then
      print_endline ("Novo salario: " ^ string_of_float (salario +. 25.0))
    else if salario >= 750.0 && salario <= 1500.0 then
      print_endline ("Novo salario: " ^ string_of_float (salario +. 50.0))
    else if salario >= 450.0 && salario < 750.0 then
      print_endline ("Novo salario: " ^ string_of_float (salario +. 75.0))
    else
      print_endline ("Novo salario: " ^ string_of_float (salario +. 100.0)))
  else if opcao = 3 then
    (print_endline "Classificacao";
    if salario <= 750.0 then
      print_endline ("Classificacao do salario: Mal remunerado")
    else
      print_endline ("Classificacao do salario: Bem remunerado"))
  else
    print_endline "Opcao invalida"
    