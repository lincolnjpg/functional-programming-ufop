(*Versao 1 - com recursividade de cauda*)

let rec sum lista listaCumulativa somaCumulativa =
  match lista with
  | []              -> List.rev listaCumulativa
  | cabeca :: cauda -> sum cauda (cabeca + somaCumulativa :: listaCumulativa) (cabeca + somaCumulativa) 

(*Versao 2 - sem recursividade de cauda*)

let rec sum_v2 lista somaCumulativa =
  match lista with
  | []              -> []
  | cabeca :: cauda -> cabeca + somaCumulativa :: (sum cauda (cabeca + somaCumulativa)) 