(* 10.2 *)
(* 挿入ソートの実装 *)

(* insert関数を読み込む *)
#use "insert.ml"

(* ins_sort int list -> int list *)
let rec ins_sort lst = match lst with
  [] -> []
  | first :: rest -> insert (ins_sort rest) first

let test4 = ins_sort [5;3;8;1;7;4] = [1;3;4;5;7;8]
let test5 = ins_sort [] = []