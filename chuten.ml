(* (x座標,y座標)の組をふたつ受け取ったら、その中天の座標を返す *)
(* chuten = (int * int) (int * int) -> float * float *)
let chuten pair = match pair with
  ((x1,y1),(x2,y2)) -> (((x1 +. x2) /. 2.0),((y1 +. y2) /. 2.0))

let test1 = chuten ((5.0,10.0),(15.0,10.0)) = (10.0,10.0)
let test2 = chuten ((6.0,25.0),(-2.0,4.0)) = (2.0,14.5)