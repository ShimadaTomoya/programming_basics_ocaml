(* 13.7 *)
(* 直前に確定した駅p と未確定の駅リストvを受け取ったら、koushin1処理を行なった後の未確定の駅リストを返す *)
(* koushin: eki_t -> eki_t list -> eki_t list *)
#use "koushin1.ml"

let koushin p v = 
  let f q = koushin1 p q in (* なるほど pの固定*)
  List.map f v 