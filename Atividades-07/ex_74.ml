let rec crapsAux numLance alvo =
  Random.self_init ();
  let face1 = Random.int 6 + 1 in
  let face2 = Random.int 6 + 1 in
  let soma = face1 + face2 in
  if numLance = 1 then
    if soma = 7 || soma = 11 then
      print_endline ("venceu: " ^ string_of_int face1 ^ " " ^ string_of_int face2)
    else if soma = 2 || soma = 3 || soma = 12 then
      print_endline ("perdeu, fi: " ^ string_of_int face1 ^ " " ^ string_of_int face2)
    else
      crapsAux (numLance + 1) soma
  else
    if soma = 7 then
      print_endline "perdeu o jogo!"
    else if soma = alvo then
      print_endline "venceu o jogo!"
    else
      crapsAux (numLance + 1) alvo
      
let craps () =
  crapsAux 0 0
  
let _ =
  craps () 
