let rec calculaPerdaMassa massa tempo =
  if int_of_float tempo mod 10 = 0 && int_of_float tempo > 0 then
    (print_float massa;print_newline ());
  if tempo = 60.0 then
    massa
  else
    calculaPerdaMassa (massa *. 2.7183 ** (5.0E-2 *. tempo *. -1.0)) (tempo +. 1.0)
    
    
let _ =
  print_endline "Informe a massa inicial";
  let massa = read_float () in
  calculaPerdaMassa massa 0.0 
