(* 整数のリストを受け取ったら、それまでの数の合計からなるリストを返すsum_listをデザインレシピにしたがって作れ *)
(* 例えば sum_list [3; 2; 1; 4] は [3; 5; 6; 10] である *)

let rec sum_list lst = 
  let rec hojo lst total0 = match lst with
    [] -> []
  | first :: rest -> (total0 + first) :: hojo rest (total0 + first)
  in hojo lst 0

(* テスト *)
let test1 = sum_list [] = []
let test2 = sum_list [3] = [3]
let test3 = sum_list [3; 2; 1; 4] = [3; 5; 6; 10]
let test4 = sum_list [3; 2; 1; 4; 5; 6; 7; 8; 9; 10] = [3; 5; 6; 10; 15; 21; 28; 36; 45; 55]
let test5 = sum_list [1; 2; 3; 4; 5; 6; 7] = [1; 3; 6; 10; 15; 21; 28]
