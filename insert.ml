(* 10.2 *)
(* 昇順に並んでる整数のリストlstと整数nを受け取ったら... *)
(* insert : int list , int -> list *)
let rec insert lst n = match lst with
  [] -> [n]
  | first :: rest -> if first > n then n :: first :: rest
                                  else first :: insert rest n

let test1 = insert [1;3;4;7;8] 5 = [1;3;4;5;7;8]
let test2 = insert [22;54;65;222;345] 234 = [22;54;65;222;234;345]
let test3 = insert [] 5 = [5]