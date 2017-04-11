let rec aproxPI valorPI n = 
  if n = -1.0 then
    4.0 *. valorPI
  else
    aproxPI (valorPI +. -1.0 ** n /. (2.0 *. n +. 1.0)) (n -. 1.0)
    
let _ =
  print_endline "Informe a quantidade de parcelas";
  let n = read_float () in
  aproxPI 0.0 n 
