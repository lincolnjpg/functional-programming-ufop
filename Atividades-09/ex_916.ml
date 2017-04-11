let rec sum lista =
  match lista with
  | []              -> 0
  | cabeca :: cauda -> sum cauda + cabeca  
