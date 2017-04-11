let rec mdcEuclides a b =
  if b = 0 then
    a
  else if b > 0 then
    mdcEuclides b (a mod b)
  else
    mdcEuclides a (-b) 
