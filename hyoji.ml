#use "ekimei_t.ml"
let ekimei1 = {kanji="茗荷谷"; kana="みょうがだに"; 
        romaji="myogadani"; shozoku="丸ノ内線"} 
let ekimei2 = {kanji="渋谷"; kana="しぶや"; 
        romaji="shibuya"; shozoku="銀座線"} 
let ekimei3 = {kanji="大手町"; kana="おおてまち"; 
        romaji="otemachi"; shozoku="千代田線"} 

(* 目的 : ekimei_t型のデータを受け取ったら「路線名、駅名（かな）」の形式で文字列を返す *)
(* hyoji : ekimei_t -> string *)
let hyoji ekimei = match ekimei with
  {kanji = kanji; kana = kana; shozoku = shozoku} -> shozoku ^ "、" ^ kanji ^ "（" ^ kana ^ "）"

let test1 = hyoji {kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myogadani"; shozoku = "丸の内線"} = "丸の内線、茗荷谷（みょうがだに）"

let test2 = hyoji ekimei1 = "丸ノ内線、茗荷谷（みょうがだに）" 
let test3 = hyoji ekimei2 = "銀座線、渋谷（しぶや）" 
let test4 = hyoji ekimei3 = "千代田線、大手町（おおてまち）" 