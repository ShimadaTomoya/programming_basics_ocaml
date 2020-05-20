 (* 14.1 *)
 (* filterを使ってeven関数 *)
#use "filter.ml"
let is_even i = (i mod 2) = 0

let even lst = filter is_even lst

let test1 = even [2;1;6;4;7] = [2;6;4]