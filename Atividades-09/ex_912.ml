let rec prefixo n lista =
  match n > 1 with
  | true when n < List.length lista               -> List.append (prefixo (n - 1) lista) [List.nth lista (n - 1)]
  | true                                          -> prefixo (n - 1) lista
  | false when n > List.length lista - 1 || n < 0 -> []
  | false                                         -> [List.nth lista (n - 1)] 
