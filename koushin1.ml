(* 13.6 *)

(* 
type eki_t = {
  namae: string;
  saitan_kyori: float;
  temae_list: string list
}
*)

(* 駅pと駅qを受け取る。直接繋がっているかを調べる。
true: qの最短距離と手前リストを更新したもの 
false: もとのqをそのまま返す*)
#use "eki_t.ml"
#use "get_ekikan_kyori.ml"

let eki1 = {namae="池袋"; saitan_kyori = infinity; temae_list = []} 
let eki2 = {namae="新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚"; "茗荷谷"]} 
let eki3 = {namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]} 
let eki4 = {namae="後楽園"; saitan_kyori = infinity; temae_list = []} 


(* koushin1: eki_t -> eki_t -> eki_t *)
let koushin1 p q = match (p, q) with 
({namae = pn; saitan_kyori = ps; temae_list = pt}, 
 {namae = qn; saitan_kyori = qs; temae_list = qt}) -> 
 let ekikan_kyori = get_ekikan_kyori pn qn global_ekikan_list in
 if ekikan_kyori != infinity && ekikan_kyori < qs then
  {namae = qn; saitan_kyori = ekikan_kyori +. ps; temae_list = qn :: pt}
  else q

  let test1 = koushin1 eki3 eki1 = eki1 
  let test2 = koushin1 eki3 eki2 = eki2 
  let test3 = koushin1 eki3 eki3 = eki3 
  let test4 = koushin1 eki3 eki4 = 
    {namae="後楽園"; saitan_kyori = 1.8; temae_list = ["後楽園"; "茗荷谷"]} 
  let test5 = koushin1 eki2 eki1 = 
    {namae="池袋"; saitan_kyori = 3.0; temae_list = ["池袋"; "新大塚"; "茗荷谷"]} 
  let test6 = koushin1 eki2 eki2 = eki2 
  let test7 = koushin1 eki2 eki3 = eki3 
  let test8 = koushin1 eki2 eki4 = eki4 