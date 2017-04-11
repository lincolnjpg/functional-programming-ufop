(* Professor, fiz de duas formas.
let rec primeirosAux lista elemento =
  if elemento = 0 then
    [List.nth lista elemento]
  else
    List.append (primeirosAux lista (elemento - 1)) [List.nth lista elemento]
    
let primeiros lista =
  if List.length lista = 0 then
    raise (Invalid_argument "lista nao pode ser vazia")
  else if List.length lista = 1 then
    primeirosAux lista ((List.length lista) - 1)
  else
    primeirosAux lista ((List.length lista) - 2)
*)

let primeiros lista =
  if List.length lista = 0 then
    raise (Invalid_argument "lista vazia")
  else
    List.rev (List.tl (List.rev lista))