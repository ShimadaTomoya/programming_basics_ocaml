(* nから1までのリストを返す *)
(* enumerate: int -> int list *)
let rec enumerate n = 
  if n = 0 then [] else n :: (enumerate (n-1))

let test1 = enumerate 5 = [5;4;3;2;1]
let test2 = enumerate 0 = []
let test3 = enumerate 10 = [10;9;8;7;6;5;4;3;2;1]
