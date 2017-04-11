let ultimo l =
  if List.length l > 0 then
    List.hd (List.rev l)
  else
    raise (Invalid_argument "lista vazia")
    
(*Segunda solucao:
let rec ultimo l =
  if List.length l > 2 then
    ultimo (List.tl l)
  else
    List.tl l
*)