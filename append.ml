let rec append lst1 lst2 = match lst1 with
  [] -> lst2
  | first :: rest -> first :: append rest lst2

let test1 = append [1;2;3;4;5] [4;3;4] = [1;2;3;4;5;4;3;4]