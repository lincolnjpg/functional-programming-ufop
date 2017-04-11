let rec all_positive_aux lista status =
  if status = false then
    false
  else    
    match lista with
    | []              -> status
    | cabeca :: cauda -> all_positive_aux cauda (cabeca > 0)

let all_positive lista =
  match lista with
  | [] -> true
  | _  -> all_positive_aux lista (if List.hd lista > 0 then true else false) 
