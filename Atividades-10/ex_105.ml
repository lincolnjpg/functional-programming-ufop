let composta f g =
  fun y -> f (g y);;
  
(*testando*)
(composta (fun x -> x mod 2 = 0) String.length) "linguagens modernas"
