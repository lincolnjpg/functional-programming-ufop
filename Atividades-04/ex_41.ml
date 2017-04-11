let areaTriangulo a b c =
  if a > 0.0 && b > 0.0 && c > 0.0 && a +. b > c && a +. c > b && c +. b > a then
    let cosA = (b ** 2.0 +. c ** 2.0 -. a ** 2.0) /. (2.0 *. b *. c) in
    let senA = sqrt (1.0 -. cosA ** 2.0) in
    let h = b *. senA in (c *. h) /. 2.0
  else
    0.0 
