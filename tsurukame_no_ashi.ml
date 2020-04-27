#use "tsuru_no_ashi.ml"
#use "kame_no_ashi.ml"
(* 目的 : 鶴と亀の数 t,k に応じた足の本数を返す *)
(* tsurukame_no_ashi : int -> int -> int *)
let tsurukame_no_ashi t k = tsuru_no_ashi t + kame_no_ashi k

(* テスト *)
let test1 = tsurukame_no_ashi 5 7 = 38
let test2 = tsurukame_no_ashi 14 5 = 48
let test3 = tsurukame_no_ashi 500 1440 = 6760