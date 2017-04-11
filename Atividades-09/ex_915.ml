(*Professor, para resolver a questao 14, minha ideia foi implementar uma funcao
auxiliar que inverte uma das listas. Sem saber, acabei fazendo a questao 15 tambem.*)

let rec rev_aux lista listaVazia=
  match lista with
  | []              -> listaVazia
  | cabeca :: cauda -> inverteLista cauda (cabeca :: listaVazia)
  
let rev lista =
  rev_aux lista []