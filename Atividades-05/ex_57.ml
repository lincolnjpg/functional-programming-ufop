let _ =
  print_endline "Informe a altura da pessoa (metros)";
  let altura = read_float () in
  print_endline "Informe o sexo da pessoa (F/M)";
  let sexo = read_line () in
  print_string "Seu peso ideal eh: ";
  if sexo = "F" then
    print_float (62.1 *. altura -. 44.7)
  else if sexo = "M" then
    print_float (72.7 *. altura -. 58.0)
  else
    print_string "Sexo informado eh invalido.";