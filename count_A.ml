(* 14.2 *)
(* 学生のリストを受け取り成績がAの学生の数を返す *)
(* count_A: gakusei_t list -> int *)
#use "filter.ml"
#use "length.ml"
#use "gakusei_t.ml"
let is_seiseki_A gakusei = match gakusei with
  {seiseki = s} -> s = "A"

let count_A lst = length (filter is_seiseki_A lst)

let test1 = count_A [gakusei1; gakusei3; gakusei5] = 1
let test2 = count_A [gakusei1; gakusei2; gakusei4 ;gakusei5] = 2
let test3 = count_A [gakusei3; gakusei4; gakusei5] = 0
let test4 = count_A [] = 0