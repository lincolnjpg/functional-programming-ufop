(*versao 1:*)

let implica a b =
  match (a, b) with
  | (true, true) | (false, false) -> true
  | (true, false) | (false, true) -> a && a 


(*versao 2:*)  
  
let implica a b =
  match (a, b) with
  | (_, _) when a <> b -> a && a
  | (_, _) -> true 