(* exo 59 *)

let max( p_1, p_2 : `a * `a) : `a =

    if p_1>=p_2 then
         p_1
    else p_2 

;;

let min_max(p_1 ,p_2 : int*int): int*int=
  if p_1>p_2 then
    (p_2, p_1)
  else (p_1, p_2)
;;

min_max(42,3);;
(*exo 60*)

;;
  ;

  if !p_2 >= 0 then 
    (
      cumul_pos := !cumul_pos + !p_2 ;
      p_2 = !cumul_pos 
    )
  else 
    (
      cumul_neg := !cumul_neg + !p_2
      p_2 := !cumul_neg
    ) 
  )
(*même chose pour p3 et P4*)
;;


(*exo 61*)

let voyelle_detect(p_voy : char ) : bool =
  if p_voy  >= 'A' && p_voy <= 'Z' then 
    failwith " Les majuscules sont interdites"
  else 
    p_voy = 'a' || p_voy= 'e' || p_voy= 'i' || p_voy= 'o' || p_voy= 'u'  || p_voy= 'y'  

;;

voyelle_detect('a');;


(*exercice 62 :*)


let variation_multiplication (a*b : int*int) : char = 
  (
  if (a || b ) = 0 then 
    failwith "ERREUR"
  else 
    if (a && b ) >0 || (a && b )< 0 then 
      '+'
    else 
      '-'
  )
;;

variation_multiplication(2;3);;