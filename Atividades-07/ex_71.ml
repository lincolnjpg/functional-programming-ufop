let rec sim_ou_nao str =
  print_endline str;
  let resposta = read_line () in
  if (resposta = "s" || resposta = "S") then
    true
  else if (resposta = "n" || resposta = "N") then
    false
  else
    sim_ou_nao str
    
let rec acertar secreto =
  print_endline "Informe um numero entre 1 e 1000";
  let palpite = read_int () in
  if palpite = secreto then
    print_endline "Parabens!!!"
  else
    begin
      print_endline (if palpite > secreto then
                       "Muito grande."
                     else
                       "Muito pequeno.");
      print_endline "Tente novamente...";
      acertar secreto
    end
    
let rec jogar () =
  let qualquer = 1 + Random.int 1000 in
  acertar qualquer;
  if sim_ou_nao "Deseja continuar jogando?" then
    jogar ()
  else
    print_endline "Fim do jogo."
 
let main () =
  print_endline "Adivinha o numero (versao 1.0)";
  print_endline "------------------------------";
  Random.self_init ();
  jogar ()
  
let _ =
  main ()  
    
