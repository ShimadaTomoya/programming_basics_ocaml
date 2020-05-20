(* 14.15 *)
(* 1から受け取った自然数までの合計を求める関数 *)
(* one_to_n: int -> int *)

#use "enumerate.ml"
#use "fold_right.ml"

let one_to_n n = fold_right (+) (enumerate n) 0

let test1 = one_to_n 5 = 15
let test2 = one_to_n 1 = 1
let test3 = one_to_n 10 = 55
let test4 = one_to_n 0 = 0