#use "person_t.ml"

(* person_t型のリストを受け取ったら、各血液型が何人いるかを組みにしてかえす *)
(* ketsueki_shukei: list person_t -> int * int * int * int *)
let rec ketsueki_shukei lst = match lst with
  [] -> (0,0,0,0)
  | {ketsueki = bt} :: rest -> 
  let (a,b,o,ab) = ketsueki_shukei rest in
  if bt = "A" then (a+1,b,o,ab)
  else if bt = "B" then (a,b+1,o,ab)
  else if bt = "O" then (a,b,o+1,ab)
  else (a,b,o,ab+1)

let test1 = ketsueki_shukei [] = (0,0,0,0)
let test2 = ketsueki_shukei [person1;person2;person3;person4;person5] = (2,1,1,1)