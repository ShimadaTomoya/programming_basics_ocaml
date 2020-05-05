#use "romaji_to_kanji.ml"
#use "get_ekikan_kyori.ml"
(* ローマ字の駅名を２つ受け取って　「A駅からB駅までは？kmです」または「A駅とB駅は繋がっていません」または「〜という駅は存在しません」という文字列を返す *)
(* kyori_wo_hyoji: string -> string -> string *)
let kyori_wo_hyoji eki1 eki2 = 
  let eki1kanji = romaji_to_kanji eki1 global_ekimei_list in
  let eki2kanji = romaji_to_kanji eki2 global_ekimei_list in
  let ekikan_kyori = get_ekikan_kyori eki1kanji eki2kanji global_ekikan_list in
  if eki1kanji = "" then eki1 ^ "という駅は存在しません"
  else if eki2kanji = "" then eki2 ^ "という駅は存在しません"
  else if ekikan_kyori = infinity then eki1kanji ^ "駅と" ^ eki2kanji ^ "駅は繋がっていません"
  else eki1kanji ^ "駅から" ^ eki2kanji ^ "駅までは" ^ string_of_float ekikan_kyori ^ "kmです"

let test1 = kyori_wo_hyoji "kokkaigijidoumae" "kasumigaseki" = "国会議事堂前駅から霞ヶ関駅までは0.7kmです"
let test2 = kyori_wo_hyoji "nogizaka" "kasumigaseki" = "乃木坂駅と霞ヶ関駅は繋がっていません"
let test3 = kyori_wo_hyoji "tamacentor" "kasumigaseki" = "tamacentorという駅は存在しません"