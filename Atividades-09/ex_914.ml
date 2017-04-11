let rec inverteLista lista listaVazia=
  (*inverte lista 1*)
  match lista with
  | []              -> listaVazia
  | cabeca :: cauda -> inverteLista cauda (cabeca :: listaVazia)

let rec append_aux l1 l2 =
  (*coloca l1 antes de l2*)
  match l1 with
  | []              -> l2
  | cabeca :: cauda -> append_aux cauda (cabeca :: l2)
  
let append l1 l2 =
  (*chama funcao auxiliar e concatena listas*)
  let lista1 = inverteLista l1 [] in
  append_aux lista1 l2
 
