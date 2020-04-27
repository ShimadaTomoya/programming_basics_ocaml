let rec sum lst = match lst with
[] -> 0
| first :: rest -> first + sum rest

let test1 = sum [1;2;3;4;5] = 15
let test2 = sum [1;2;3;4;5;6;7;8;9;10] = 55
let test3 = sum [3;5;7] = 15