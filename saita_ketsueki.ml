#use "person_t.ml"
#use "ketsueki_shukei.ml"
(* person_t型のリストを受け取ったら、4つの血液型のうちもっとも人数の多かった血液型を返す関数 *)
(* 同数だった場合どうする？ *)
(* saita_ketsueki: lst person_t -> string *)
let saita_ketsueki lst = match lst with
  [] -> ""
  | first :: rest -> 
    let (a,b,o,ab) = ketsueki_shukei lst in 
    let saidai = max (max a b) (max o ab) in 
    if saidai = a then "A" 
    else if saidai = o then "O" 
    else if saidai = b then "B" 
    else "AB" 


let test1 = saita_ketsueki [] = ""
let test2 = saita_ketsueki [person1;person2;person3;person4;person5] = "A"