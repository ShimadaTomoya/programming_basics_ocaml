(* (国語,数学,英語,理科,社会) のように点数を組で与えられたら、合計点と平均点を組にして返す *)
(* goukei_to_heikin: (int * int * int * int * int) -> (int * int) *)
let goukei_to_heikin (a,b,c,d,e) = ((a+b+c+d+e),((a+b+c+d+e)/5))

(* テスト *)
let test1 = goukei_to_heikin (80,70,55,34,30) = (269,53)
let test1 = goukei_to_heikin (36,50,98,45,70) = (299,59)