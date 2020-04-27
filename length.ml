(* リストを受け取ったらそのリストの長さ（要素数）を返す関数 *)
(* length list -> int *)
let rec length lst = match lst with
  [] -> 0
  | first :: rest -> 1 + length rest

let test1 = length [1;2;2;2;2] = 5
let test2 = length [] = 0
let test3 = length ["aoui";"aa"] = 2