let rec existeNaLista elemento lista =  
  match lista with
  | []                                         -> false
  | cabeca :: _         when cabeca = elemento -> true
  | _ :: cauda                                 -> existeNaLista elemento cauda

let mem elemento lista =
  existeNaLista elemento lista
 
