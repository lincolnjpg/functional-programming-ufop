let rec calculaSalarioAtual salario tempoCasa =
  if tempoCasa = 0 then
    salario
  else
    calculaSalarioAtual (salario *. 1.012) (tempoCasa - 1)
    
let _ =
  print_endline "Calcula salario atual do funcionario";
  print_endline "Informe o salario inicial do funcionario";
  let salario = read_float () in
  print_endline "Informe o ano de contratacao do funcionario";
  let anoContratacao = read_int () in
  print_endline "Informe o ano atual";
  let anoAtual = read_int () in
  calculaSalarioAtual salario (anoAtual - anoContratacao) 
