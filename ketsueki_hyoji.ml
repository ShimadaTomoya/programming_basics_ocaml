type person_t = {
  name : string;
  height : float;
  weight : float;
  birth_month : int;
  birth_day : int;
  blood_type : string;
}

(* 目的 : person_t型の人情報を受け取り、「nameさんの血液型はblood_typeです」という文字列を返す*)
(* ketsueki_hyoji : person_t -> string *)
let ketsueki_hyoji person = match person with
  {name = n; blood_type = bt} -> n ^ "san no ketsuekigata ha" ^ bt ^ "gata desu."

let test1 = ketsueki_hyoji {name = "kenta"; height = 173.0; weight = 54.3; birth_month = 4; birth_day = 30; blood_type = "AB"} = "kentasan no ketsuekigata haABgata desu."

(* ketsueki_hyoji {name = "kenta";height = 170.0; weight = 40.2; birth_month = 4 ; birth_day = 2; blood_type = "B"} *)