(*  *)
(* even int list -> int list *)
let rec even lst = match lst with
  [] -> []
  | first :: rest -> if (first mod 2) = 0 then first :: even rest
  else even rest

let test1 = even [2;1;6;4;7] = [2;6;4]