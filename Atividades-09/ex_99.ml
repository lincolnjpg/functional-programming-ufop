(*com recursividade de cauda*)

let rec qtdeElementos lista cont =
  match lista with
  | []         -> cont
  | _ :: []    -> cont + 1
  | _ :: cauda -> qtdeElementos cauda (cont + 1)

let length lista =
  qtdeElementos lista 0 

(*sem recursividade de cauda*)

let rec qtdeElementos lista =
  match lista with
  | []         -> 0
  | _ :: []    -> 1
  | _ :: cauda -> qtdeElementos cauda + 1

let length lista =
  qtdeElementos lista
