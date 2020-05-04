#use "gakusei_t.ml"
(* 10.8 gakusei_tのリストを受け取って最高得点の学生を返す *)
(* gakusei_max: gakusei_t list -> gakusei_t *)
let rec gakusei_max lst = match lst with
  [] -> {namae = ""; tensuu = min_int; seiseki = ""} 
  | ({tensuu = t} as gakusei) :: rest -> 
  let gakurei_max_rest = gakusei_max rest in 
  match gakurei_max_rest with {namae = n_max; tensuu = t_max; seiseki = s_max} -> 
    if t_max < t then gakusei 
    else gakurei_max_rest 

let test1 = gakusei_max [gakusei4;gakusei3;gakusei2] = gakusei2
let test2 = gakusei_max [gakusei2;gakusei1;gakusei4] = gakusei1