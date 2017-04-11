let rec stringCaracteres string =
  match String.length string with
  | 0       -> raise (Invalid_argument "string nao pode ser vazia")
  | 1       -> [String.get string 0]
  | tamanho -> (String.get string 0) :: stringCaracteres (String.sub string 1 (tamanho - 1))

let rec caracteresString lista =
  match lista with
  | [] -> raise (Invalid_argument "lista nao pode ser vazia")
  | caracter :: [] -> String.make 1 caracter
  | caracter :: cauda -> String.make 1 caracter ^ caracteresString cauda
