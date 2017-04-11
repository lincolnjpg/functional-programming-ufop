let _ =
  print_endline "Classe eleitoral";
  print_endline "Informe a idade da pessoa: ";
  let idade = read_int () in
  if idade < 16 then
    print_endline "Nao eleitor"
  else if (idade >= 16 && idade < 18) || idade > 64 then
    print_endline "Eleitor facultativo"
  else
    print_endline "Eleitor obrigatorio"