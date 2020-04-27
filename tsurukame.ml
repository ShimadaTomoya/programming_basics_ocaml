(* 目的 : 鶴と亀の数の合計 tk と足の数の合計 feet に応じた鶴の数を返す *)
(* tsurukame : int -> int -> int *)
let tsurukame tk feet = tk - ((feet - (tk * 2)) / 2)
(* テスト *)
let test1 = tsurukame 8 26 = 3