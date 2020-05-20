let rec filter p lst = match lst with
  [] -> []
  | first :: rest -> if p first then first :: filter p rest
                                else filter p rest