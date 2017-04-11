let _ =
  print_endline "Verificacao de termos pitagoricos";
  print_endline "--------------------------";
  print_string "Informe o primeiro numero positivo: ";
  let numA = read_int () in
  print_newline ();
  print_string "Informe o segundo numero positivo: ";
  let numB = read_int () in
  print_newline ();
  print_string "Informe o terceiro numero positivo: ";
  let numC = read_int () in
  print_newline ();
  if numA <= 0 || numB <= 0 || numC <= 0 then
    print_endline "Numeros invalidos"
  else if ((float_of_int numA) ** 2.0 +. (float_of_int numB) ** 2.0 = (float_of_int numC) ** 2.0) then
    print_endline "Numeros formam um termo pitagorico"
  else
    print_endline "Numeros nao formam um termo pitagorico"