let conceito n1 n2 n3 =
  let media = (n1 *. 2.0) +. (n2 *. 3.0) +. (n3 *. 5.0) /. (2.0 +. 3.0 +. 5.0) in
  if media >= 8.0 && media <= 10.0 then
                'A'
  else if media >= 7.0 && media < 8.0 then
    'B'
  else if media >= 6.0 && media < 7.0 then
    'C'
  else if media >= 5.0 && media < 6.0 then
    'D'
  else if media >= 0.0 && media < 5.0 then
    'E'
  else
    'F'
    
let main =
  print_string "Digite a nota do trabalho de laboratório ...: ";
  let laboratorio = read_float () in
  print_string "Digite a nota da avaliação semestral .......: ";
  let semestral = read_float () in
  print_string "Digite a nota do exame final ...............: ";
  let final = read_float () in
  print_newline ();
  print_string "Conceito obtido: ";
  print_char (conceito laboratorio semestral final);
  print_newline () 
