let number_of_odd_and_even (p_a, p_b, p_c, p_d : int * int * int * int) : int * int =
  let cpt_odd : int ref = ref 0 
  and cpt_even : int ref = ref 0 in 
  (
    if p_a mod 2 = 0 then
      cpt_even := !cpt_even + 1 
    else 
      cpt_odd := !cpt_odd + 1
  );

  (
    if p_b mod 2 = 0 then
      cpt_even := !cpt_even + 1 
    else 
      cpt_odd := !cpt_odd + 1 
  );

  ( 
    if p_c mod 2 = 0 then
      cpt_even := !cpt_even + 1 
    else 
      cpt_odd := !cpt_odd + 1 
  );

  (
    if p_d mod 2 = 0 then
      cpt_even := !cpt_even + 1 
    else 
      cpt_odd := !cpt_odd + 1 
  );

  (!cpt_odd, !cpt_even)
;;
number_of_odd_and_even( 3, 3, 4, 7);;



type t_month =  | JANUARY  | FEBRUARY  | MARCH | APRIL | MAY | JUNE  | JULY | AUGUST | SEPTEMBER  | OCTOBER | NOVEMBER | DECEMBER ;;

let month_nb_day (p_month : t_month) (p_bssxtl : bool) : int = 
  if p_bssxtl = true then 
    (
      if p_month = FEBRUARY then 
        28 
      else 
        if p_month = JANUARY || p_month = MARCH || p_month = MAY || p_month = JULY || p_month = AUGUST || p_month = OCTOBER || p_month = DECEMBER then 
          31 
        else
          30
    ) 
  else 
    (
      if p_month = FEBRUARY then 
        29
      else 
        if p_month = JANUARY || p_month = MARCH || p_month = MAY || p_month = JULY || p_month = AUGUST || p_month = OCTOBER || p_month = DECEMBER then 
          31 
        else
          30
    )
;;


month_nb_day JANUARY true;;