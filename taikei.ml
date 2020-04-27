let calc_bmi h w = w /. h ** 2.0
(* 身長 h と体重 w から体型を返す *)
(* taikei : float -> float -> string *)
let taikei h w = 
  if calc_bmi h w < 18.5 then "やせ"
  else if 18.5 <= calc_bmi h w && calc_bmi h w < 25.0 then "標準"
  else if 25.0 <= calc_bmi h w && calc_bmi h w < 30.0 then "肥満"
  else "高度肥満"

(* テスト *)
let test1 = taikei 1.73 50.0 = "やせ"
let test2 = taikei 1.73 65.0 = "標準"
let test3 = taikei 1.73 75.0 = "肥満"
let test4 = taikei 1.63 100.0 = "高度肥満"