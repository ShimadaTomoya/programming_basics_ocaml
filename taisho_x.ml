(* (x座標,y座標)の組を受け取ったら、xについて対称な座標を返す *)
(* taisho_x = int * int -> int * int *)
let taisho_x pair = match pair with
  (x,y) -> ((- x),y)

let test1 = taisho_x (5,10) = (-5,10)
let test2 = taisho_x (-34,64) = (34,64)