let _ =
  print_endline "Produto de numeros ponto flutuante";
  print_string "Informe o primeiro numero";
  print_newline ();
  let numA = read_float () in
  print_string "Informe o segundo numero";
  print_newline ();
  let numB = read_float () in
  print_string "Informe o terceiro numero";
  print_newline ();
  let numC = read_float () in
  let result = numA *. numB *. numC in
  print_string "O resultado eh: ";
  print_float result;
  print_newline ();