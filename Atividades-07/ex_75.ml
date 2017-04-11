let rec removeEstrela [linha1; linha2; linha3; linha4; linha5] idJogador =
  if linha1 > 0 || linha2 > 0 || linha3 > 0 || linha4 > 0 || linha5 > 0 then
    begin
      if idJogador = 1 then
        print_endline "Jogador 1 - Informa a linha de onde deseja remover uma estrela"
      else
        print_endline "Jogador 2 - Informa a linha de onde deseja remover uma estrela";
      let linhaAlvo = read_int () in
      if linhaAlvo < 1 || linhaAlvo > 5 then
        print_endline "Linha invalida"           
      else if linhaAlvo = 1 then
        removeEstrela [linha1 - 1; linha2; linha3; linha4; linha5] (idJogador * -1)
      else if linhaAlvo = 2 then
        removeEstrela [linha1; linha2 - 1; linha3; linha4; linha5] (idJogador * -1)
      else if linhaAlvo = 3 then
        removeEstrela [linha1; linha2; linha3 - 1; linha4; linha5] (idJogador * -1)
      else if linhaAlvo = 4 then
        removeEstrela [linha1; linha2; linha3; linha4 - 1; linha5] (idJogador * -1)
      else if linhaAlvo = 5 then
        removeEstrela [linha1; linha2; linha3; linha4; linha5 - 1] (idJogador * -1)
    end
  else    
    print_endline ("Fim do jogo. O vencedor eh o" ^ if idJogador = -1 then "jogador 1" else "jogador 2")
    
let nim () =
  removeEstrela [5; 4; 3; 2; 1] 1
  
let _ =
  print_endline "Bem vindo ao jogo Nim";
  print_endline "---------------------";
  nim () 
