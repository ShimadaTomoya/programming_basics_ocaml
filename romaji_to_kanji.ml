#use "ekimei_t.ml"
(* 10.10 ローマ字の駅名と駅名リストを受け取ったらその駅の漢字表記を文字列で返す *)
(* romaji_to_kanji: string -> ekimei_t list -> string *)
let rec romaji_to_kanji rmj lst = match lst with
  [] -> ""
  | {kanji=k; romaji=r} :: rest -> 
    if r = rmj then k
               else romaji_to_kanji rmj rest

let test1 = romaji_to_kanji "myogadani" global_ekimei_list = "茗荷谷"