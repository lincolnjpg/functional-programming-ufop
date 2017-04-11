let x = 3
let y = 4
let e = 2.7182

let parcelA = 1.0 /. (float_of_int x ** 2.0 -. float_of_int y)
let parcelB = e ** float_of_int (-4 * x)
let parcelC = (float_of_int (35 / y) ** (1.0 /. 3.0)) *. sqrt (float_of_int (x * y))

let result = parcelA -. parcelB +. parcelC