#use "ekikan_t.ml"
(* 10.11 漢字の駅名を２つと、駅間リストを受け取ったら、駅間リストの中からその2点間の距離を返す *)
(* get_ekikan_kyori: string -> string -> ekikan_t list -> float *)
let rec get_ekikan_kyori eki1 eki2 ekikan_lst = match ekikan_lst with
  [] -> infinity
  | {kiten=kt; shuten=st; kyori=kr} :: rest ->
    if (kt = eki1 && st = eki2) || (kt = eki2 && st = eki1) then kr
    else get_ekikan_kyori eki1 eki2 rest

let test1 = get_ekikan_kyori "茗荷谷" "新大塚" global_ekikan_list = 1.2
let test2 = get_ekikan_kyori "新大塚" "茗荷谷" global_ekikan_list = 1.2
let test3 = get_ekikan_kyori "新大塚" "乃木坂" global_ekikan_list = infinity