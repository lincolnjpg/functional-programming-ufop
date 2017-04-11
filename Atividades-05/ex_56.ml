let _ =
  print_endline "Informe as tres notas do aluno";
  print_string "Nota 1: ";
  let nota1 = read_float () in
  print_newline ();
  print_string "Nota 2: ";
  let nota2 = read_float () in
  print_newline ();
  print_string "Nota 3: ";
  let nota3 = read_float () in
  print_newline ();
  let mediaAluno = (nota1 +. nota2 +. nota3) /. 3.0 in
  print_string "Media do aluno: ";
  print_float mediaAluno;
  print_newline ();
  print_string "Situacao do aluno: ";
  if mediaAluno < 3.0 then
    print_endline "Reprovado"
  else if mediaAluno >= 3.0 && mediaAluno < 7.0 then
    print_endline "Exame especial"
  else
    print_endline "Aprovado"