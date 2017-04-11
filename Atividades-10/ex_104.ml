let composta f g =
    let resultante y = f (g y) in
    resultante;;  
  
(*testando*)

composta (fun a -> a * 8) (fun x -> x + 200) 12
