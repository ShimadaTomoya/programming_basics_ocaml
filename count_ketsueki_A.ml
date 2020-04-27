#use "person_t.ml"

(* person_t list -> int *)
let rec count_ketsueki_A lst = match lst with
  [] -> 0
  | {blood_type = b} :: rest
    -> if b = "A" then 1 + count_ketsueki_A rest
               else count_ketsueki_A rest

let test1 = count_ketsueki_A [kenji] = 1
let test2 = count_ketsueki_A [kenji;sanae] = 1