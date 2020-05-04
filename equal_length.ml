(* 10.9 ふたつのリストを受け取って、それらの長さが同じならtrue,違うならfalseを返す*)
(* equal_length: a' list -> a' list -> bool *)
let rec equal_length lst1 lst2 = match (lst1, lst2) with
  ([], []) -> true
  | ([], first2 :: rest2) -> false
  | (first1 :: rest1, []) -> false
  | (first1 :: rest1, first2 :: rest2) ->
  equal_length rest1 rest2

let test1 = equal_length [1;2;3] [4;5;6] = true
let test2 = equal_length [] [] = true
let test3 = equal_length [] [1;2;3] = false
let test4 = equal_length [1;2;3] [] = false
let test5 = equal_length [1;2;3] [4;5;6;5] = false
let test6 = equal_length ["adfad","fdsa"] ["fdsa","fdsaf"] = true