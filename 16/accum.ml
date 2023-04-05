type distance_t = {
  kyori : float;
  total : float;
}

let rec hojo lst total0 = match lst with
  [] -> []
  | {kyori = k; total = t} :: rest ->
    {kyori = k; total = total0 +. k} :: hojo rest (total0 +. k)