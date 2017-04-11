let raizReal a b c =
  let disc = b ** 2.0 -. 4.0 *. a *. c in
  if disc = 0.0 then
    [(-1.0 *. b +. sqrt disc) /. 2.0 *. a]
  else if disc > 0.0 then
    List.append [(-1.0 *. b +. sqrt disc) /. (2.0 *. a)] [(-1.0 *. b -. sqrt disc) /. (2.0 *. a)]
  else
    [] 
