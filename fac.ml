(* 14.16 *)
(* 階乗求める関数 *)
(* fac: int -> int *)
#use "enumerate.ml"
#use "fold_right.ml"

let fac n = fold_right ( * ) (enumerate n) 1

let test1 = fac 5 = 120
let test2 = fac 1 = 1
let test3 = fac 10 = 3628800
let test4 = fac 0 = 1