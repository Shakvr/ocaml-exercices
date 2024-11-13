let number_of_even_and_odd (a, b, c : int * int * int) : int * int = 
  let cpt_odd : int  = (a mod 2) + (b mod 2) + (c mod 2) in
  let cpt_even : int = 3 - cpt_odd in
  (cpt_even, cpt_odd)
;;
let result = number_of_even_and_odd (3, -2, 78);;

type t_time = {hour: int ref; minute: int ref; second: int ref} ;;

let timer (time : t_time) : unit =
  (* Convertit l'horaire en secondes et ajoute 1 seconde *)
  let time_in_seconds : int = ( (!(time.hour) * 3600) + (!(time.minute) * 60) + !(time.second)) + 1 in
  
  (* Convertit le nouvel horaire en t_time *)

  time.hour := (time_in_seconds / 3600) mod 24;
  time.minute := (time_in_seconds mod 3600) / 60;
  time.second := (time_in_seconds mod 60)


;;
