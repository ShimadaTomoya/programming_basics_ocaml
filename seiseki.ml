(* (名前,成績)の組を受け取り、"名前さんの評価は成績です"という文字列を返す *)
(* (string * string) -> string *)
let seiseki pair = match pair with
  (a,b) -> a ^ "さんの評価は" ^ b ^ "です"

let test1 = seiseki ("shimada", "4") = "shimadaさんの評価は4です"