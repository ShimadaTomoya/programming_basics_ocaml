(* 目的 : 時間 x を受け取って午前か午後かを判定して返す関数 *)
(* jikan : int -> string *)
let jikan x = if x > 11 then "PM" else "AM"

(* テスト *)
let test1 = jikan 12 = "PM"
let test2 = jikan 11 = "AM"
let test3 = jikan 0  = "AM"
let test4 = jikan 23 = "PM"