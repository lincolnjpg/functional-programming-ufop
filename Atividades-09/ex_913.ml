(*Letra A*)

let rec find_salary name db =
  match db with
  | []                           -> raise (Invalid_argument "Nao ha funcionario com esse nome")
  | (x, _, z) :: _ when x = name -> z
  | _                            -> find_salary name (List.tl db)  

(*Letra B*)

let rec somaIdades db =
  match db with
  | []              -> 0
  | (_, y, _) :: _  -> somaIdades (List.tl db) + y

let calculaMediaIdades db =
  match db with
  | [] -> 0.
  | _  -> float_of_int (somaIdades db) /. float_of_int (List.length db)
  
(*Letra C*)

let rec idadeSuperiorMedia db media =
  match db with
  | []             -> 0
  | (_, y, _) :: _ -> idadeSuperiorMedia (List.tl db) media + if float_of_int y > media then 1 else 0

let percentualIdadeSuperiorMedia db =
  let media = calculaMediaIdades db in
  print_string "A porcentagem de funcionarios com idade superior a media de
                idades de todos os funcionarios eh: ";
  print_float (float_of_int (idadeSuperiorMedia db media) /. float_of_int (List.length db) *. 100.);
  print_string "%.";
  print_newline ();
  
(*Letra D*)

let rec nomeSalarioInferior db idade =
  match db with
  | []                            -> []
  | (x, y, z) :: _ when y < idade -> List.append [(x, z)] (nomeSalarioInferior (List.tl db) idade)
  | _                             -> nomeSalarioInferior (List.tl db) idade

(*Letra E*)

let rec maiorSalario bd maior =
  match bd with
  | []                                            -> maior
  | (_, _, salario) :: cauda when salario > maior -> maiorSalario cauda salario
  | _ :: cauda                                    -> maiorSalario cauda maior

(*Partindo do principio de que nao ha salario negativo, envio 0 como segundo
argumento (maior salario). O maior salario deve ser calculado apenas uma vez,
por isso a variavel eh global.*)
let maior = maiorSalario bd 0.

(*Com recursividade de cauda*)
let rec maisBemRemunerados_v1 bd lista =
  match bd with
  | []                                               -> List.rev lista
  | (nome, _, salario) :: cauda when salario = maior -> maisBemRemunerados_v1 cauda (nome :: lista) 
  | _ :: cauda                                       -> maisBemRemunerados_v1 cauda lista

(*Sem recursividade de cauda*)
let rec maisBemRemunerados_v2 bd =
  match bd with
  | []                                               -> []
  | (nome, _, salario) :: cauda when salario = maior -> nome :: maisBemRemunerados_v2 cauda
  | _ :: cauda                                       -> maisBemRemunerados_v2 cauda
  