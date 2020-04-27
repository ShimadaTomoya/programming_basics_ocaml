(* 目的 : 鶴の数 x に応じた足の本数を返す *)
(* tsuru_no_ashi : int -> int *)
let tsuru_no_ashi x = x * 2

(* テスト *)
let test1 = tsuru_no_ashi 5 = 10
let test2 = tsuru_no_ashi 14 = 28
let test3 = tsuru_no_ashi 1440 = 2880