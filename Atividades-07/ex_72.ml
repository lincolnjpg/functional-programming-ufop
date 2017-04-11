let rec sim_ou_nao str =
  print_endline str;
  let resposta = read_line () in
  if (resposta = "s" || resposta = "S") then
    true
  else if (resposta = "n" || resposta = "N") then
    false
  else
    sim_ou_nao str
    
let rec acertar secreto numX numY =
  print_endline ("Informe um numero entre " ^ string_of_int numX ^ " e " ^ string_of_int numY);
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
      acertar secreto numX numY
    end
    
let rec jogar numX numY =
  let secreto = numX + Random.int numY in
  acertar secreto numX numY;
  if sim_ou_nao "Deseja continuar jogando?" then
    jogar numX numY
  else
    print_endline "Fim do jogo."
 
let main () =
  print_endline "Adivinha o numero (versao 1.0)";
  print_endline "------------------------------";
  Random.self_init ();
  print_string "Informe um valor inteiro para X (limite inferior)";
  let numX = read_int () in
  print_string "Informe um valor inteiro para Y (limite superior)";
  let numY = read_int () in
  jogar numX numY
  
let _ =
  main ()
    
