#use "ekimei_t.ml"
#use "eki_t.ml"
(* 12.2 *)
(* ekimei_tリストを受け取ったらeki_t型のリストを返す *)
(* make_eki_list: ekimei_t list -> eki_t list *)
let rec make_eki_list ekimei_t_list = match ekimei_t_list with
  [] -> []
  | { kanji=k } :: rest -> {namae=k; saitan_kyori=infinity; temae_list=[]} :: make_eki_list rest
