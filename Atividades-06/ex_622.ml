let rec leNotas acumulaNotas qtdeNotas =
  if qtdeNotas = 0.0 then
    acumulaNotas
  else
    begin
      print_endline "Informe a nota do aluno";
      let novaNota = read_float () in    
      leNotas (novaNota +. acumulaNotas) (qtdeNotas -. 1.0)
    end
  
let rec fechamentoAux qtdeAlunos qtdeAlunosAux qtdeNotas acumulaNotas notaTurma qtdeAprov qtdeReprov qtdeEspec =
  if qtdeAlunos > 0 then
    begin
      let notaAluno = leNotas acumulaNotas qtdeNotas in      
      print_endline "Media do aluno: ";
      print_float (notaAluno /. qtdeNotas);
      print_newline ();
      if (notaAluno /. qtdeNotas) < 3.0 then
        fechamentoAux (qtdeAlunos - 1) qtdeAlunosAux 3.0 0.0 (notaTurma +. notaAluno) qtdeAprov (qtdeReprov + 1) qtdeEspec
      else if (notaAluno /. qtdeNotas) >= 3.0 && (notaAluno /. qtdeNotas) <= 7.0 then
        fechamentoAux (qtdeAlunos - 1) qtdeAlunosAux 3.0 0.0 (notaTurma +. notaAluno) qtdeAprov qtdeReprov (qtdeEspec + 1)
      else        
        fechamentoAux (qtdeAlunos - 1) qtdeAlunosAux 3.0 0.0 (notaTurma +. notaAluno) (qtdeAprov + 1) qtdeReprov qtdeEspec
    end
  else
    begin      
      print_string "Media da turma: ";
      print_float (notaTurma /. float_of_int qtdeAlunosAux);
      print_newline ();
      print_string "Percentual de alunos aprovados: ";
      print_float ((float_of_int qtdeAprov /. float_of_int qtdeAlunosAux) *. 100.0);
      print_newline ();
      print_string "Percentual de alunos reprovados: ";
      print_float ((float_of_int qtdeReprov /. float_of_int qtdeAlunosAux) *. 100.0);
      print_newline ();
      print_string "Percentual de alunos que deverao fazer exame especial: ";
      print_float ((float_of_int qtdeEspec /. float_of_int qtdeAlunosAux) *. 100.0);
      print_newline ();    
    end 

let fechamentoNotas =
  print_endline "Informe a quantidade de alunos";
  let qtdeAlunos = read_int () in
  print_endline "Informe as notas dos aluno";
  fechamentoAux qtdeAlunos qtdeAlunos 3.0 0.0 0.0 0 0 0