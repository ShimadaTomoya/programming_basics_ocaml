(* 12.4 *)
(* *)
let rec insert lst ekimei0 = match lst with
  [] -> [ekimei0]
  | ({kana=kn} as ekimei) :: rest -> match ekimei with {kana=kn0} ->
  if kn > n then n :: first :: rest
                                else first :: insert rest n

(* seiretsu: ekimei_t list -> ekimei_t list *)
let rec seiretsu lst = match lst with
  [] -> []
  | first :: rest -> insert (seiretsu rest) first
