(* 14.14 *)
#use "fold_right.ml"

let concat lst = fold_right (^) lst ""

let test1 = concat ["春";"夏";"秋";"冬"] = "春夏秋冬"