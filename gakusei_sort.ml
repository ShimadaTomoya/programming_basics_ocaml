#use "gakusei_t.ml"

let rec gakusei_insert lst gakusei0 = match lst with
  [] -> [gakusei0]
  | ({tensuu = t} as gakusei) :: rest -> 
    match gakusei0 with {tensuu = t0} ->
      if t < t0 then gakusei :: gakusei_insert rest gakusei0 
                else gakusei0 :: lst 

let test1 = gakusei_insert [taro;atsuko] yuko = [taro;yuko;atsuko]

(* 目的：受け取った学生のリスト lst を点数の順に並べる *) 
(* gakusei_ins_sort : gakusei_t list -> gakusei_t list *) 
let rec gakusei_ins_sort lst = match lst with 
    [] -> [] 
  | first :: rest -> gakusei_insert (gakusei_ins_sort rest) first 

let test2 = gakusei_ins_sort [] = []
let test3 = gakusei_ins_sort [atsuko;taro;yuko] = [taro;yuko;atsuko]