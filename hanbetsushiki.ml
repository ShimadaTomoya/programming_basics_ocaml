(* ax2 + bx + c　の係数 a,b,cから判別式 b2-4acの値を返す関数 *)
(* hanbetsushiki : float -> float -> float -> float *)
let hanbetsushiki a b c = b ** 2.0 -. 4.0 *. a *. c

(* テスト *)
let test1 = hanbetsushiki 2.0 3.0 (-1.0) = 17.0
let test2 = hanbetsushiki 3.0 2.0 4.0 = (-44.0)
let test3 = hanbetsushiki 1.0 2.0 1.0 = 0.0