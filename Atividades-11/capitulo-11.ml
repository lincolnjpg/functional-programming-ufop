type nome = string
type preco = int
type codigo = int

type mercadorias = (codigo * nome * preco) list

let tabelaMercadorias : mercadorias =
  [
    (4719, "Fish Fingers", 121);
    (5643, "Nappies", 1010);
    (3814, "Orange Jelly", 56);
    (1111, "Hula Hoops", 21);
    (1112, "Hula Hoops (Giant)", 133);
    (1234, "Dry Sherry, 1lt", 540);
  ]

type carrinho = codigo list
type conta =  (nome * preco) list

let listaCodigos = [1234; 4719; 3814; 1112; 1113; 1234]

(*Tarefa 11.1*)

let formata_centavos (centavos : preco) : string =
  let parte_inteira = centavos / 100 in
  let parte_fracionaria = centavos mod 100 in
  let ajuste = if parte_fracionaria < 10 then "0" else "" in
  string_of_int parte_inteira ^ "." ^ ajuste ^ string_of_int parte_fracionaria
  
(*Tarefa 11.2*)

let formata_linha (n, p : nome * preco) : string = 
  let tamanhoLinha : int = 30 in
  let valor = formata_centavos p in
  let tamanhoString = String.length n + String.length valor in
  n ^ String.make (tamanhoLinha - tamanhoString) '.' ^ valor ^ "\n"

(*Tarefa 11.3*)

let formata_linhas (lista : (nome * preco) list) : string =
  let listaAux = List.map (fun (n, p) -> formata_linha (n, p)) lista in
  let contaSuperM = List.fold_left (^) "" listaAux in
  contaSuperM
  
(*Tarefa 11.4*)
let formata_total (p : preco) : string =
  let tamanhoLinha = 30 in
  let valorTotal = formata_centavos p in
  let tamanhoString = String.length valorTotal in
  "\nTotal" ^ String.make ((tamanhoLinha - tamanhoString) - 5) '.' ^ valorTotal

(*Tarefa 11.6*)
let calcula_conta (c : conta) : preco =
  let listaPrecos = List.map (fun produto -> snd produto) c in
  let valorTotal = List.fold_left (+) 0 listaPrecos in
  valorTotal
  
(*Tarefa 11.5*)
let formata_conta (c : conta) : string =
  formata_linhas c ^ "\n\n" ^ formata_total (calcula_conta c)
  
(*Tarefa 11.7*)
let procura_codigo (m : mercadorias) (c : codigo) : nome * preco =
  let buscaProduto = List.filter (fun (codigo, _, _) -> codigo = c) m in
  match buscaProduto with
  | [] -> ("Unknown Item", 0)
  | (_, nome, preco) :: _ -> (nome, preco)
  
(*Tarega 11.8*)
let cria_conta (m : mercadorias) (car : carrinho) : conta =
  let contaSuperM = List.map (procura_codigo m) car in
  contaSuperM
  
(*Tarefa 11.9*)
let faz_compra (m: mercadorias) (car : carrinho) : string =  
  formata_conta (cria_conta m car)
  
(*Tarefa 11.10*)
let rec montaLista lista =
  print_endline "Informe o codigo da mercadoria";
  let cod = read_int () in
  if cod <= 0 then
    List.rev lista
  else
    montaLista (cod :: lista)
    
let main = 
  let listaCompras = montaLista [] in
  print_endline "\n\nOCaml Stores\n\n";
  print_endline (faz_compra tabelaMercadorias listaCompras)

(*Tarefa 11.11

Arquivo executavel gerado com sucesso.

*)
