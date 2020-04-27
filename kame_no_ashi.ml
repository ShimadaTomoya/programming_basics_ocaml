(* 目的 : 亀の数 x に応じた足の本数を返す *)
(* kame_no_ashi : int -> int *)
let kame_no_ashi x = x * 4

(* テスト *)
let test1 = kame_no_ashi 5 = 20
let test2 = kame_no_ashi 14 = 56
let test3 = kame_no_ashi 1440 = 5760