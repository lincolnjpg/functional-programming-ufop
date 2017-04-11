let conceito_obtido media_pond =
  if media_pond >= 8.0 && media_pond <= 10.0 then
    'A'
  else if media_pond >= 7.0 && media_pond < 8.0 then
    'B'
  else if media_pond >= 6.0 && media_pond < 7.0 then
    'C'
  else if media_pond >= 5.0 && media_pond < 6.0 then
    'D'
  else if media_pond >= 0.0 && media_pond < 5.0 then
    'E'
  else
    'F' 
