(* 14.3 *)
#use "fold_right.ml"

let f first rest_result = first ^ rest_result
let concat lst = fold_right f lst ""

let test1 = concat ["春";"夏";"秋";"冬"] = "春夏秋冬"