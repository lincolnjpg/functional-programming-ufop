let hd lista =
  match lista with
  | []      -> raise (Invalid_argument "lista vazia nao possui cabeca")
  | x :: _  -> x 

let tl lista =
  match lista with
  | []      -> raise (Invalid_argument "lista vazia nao possui cauda")
  | x :: xs -> xs 
