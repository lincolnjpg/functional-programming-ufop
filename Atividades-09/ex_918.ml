let rec is_sorted lst =
  match lst with
  | [] -> true
  | x :: rest -> match rest with
                 | y :: rest' -> if x > y then
                                   false
                                 else
                                   is_sorted rest
                 | [] -> true
 
