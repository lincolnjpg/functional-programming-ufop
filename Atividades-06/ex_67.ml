let rec fatorialDuplo num =    
  if num = 1 || num = 2 then
    num
  else
    fatorialDuplo (num - 2) * num;
       
