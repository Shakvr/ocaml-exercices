(* exo 90*)

let polynome (p_poly : float array) (p_x : float) : float = (* prototype fonction *) 
  let result : float ref = ref 0.0 in 
  for i = 0 to Array.length p_poly - 1 do 
    result := !result +. p_poly.(i) *. (p_x ** float_of_int i)
  done;
  !result
;;

polynome [|4. ; 7. ; 9. ; 19. ; 20. |] 2.0;;



4 + 7*2 + 9*4 + 19*8 + 20* 16 ;;   (* verification du resultat mathematicalement*)


 (* exo 91  *)

 let mirror (tab : int array) : int array =
  let length = Array.length tab in
  let result = Array.make length tab.(0) in
  for i = 0 to length - 1 do
    result.(i) <- tab.(length - 1 - i)
  done;
  result
;;

(* Exemple d'appel de la fonction *)
mirror [|1; 2; 3; 4; 5|];;
 

(* exo 92  *)


let find_val (p_tab, p_val : int array * int) : bool*int  =
  let l = Array.length p_tab - 1 in
  let indice : int ref = ref 0 in 
  let res = ref false in
  for i = 0 to l do
    if p_tab.(i) = p_val then
      (
        indice := !indice + i ;
        res := true
      ) 
    done;
  (!res ,  !indice)
;;

find_val ([|1; 2; 3; 4; 5|] , 2);;




(* exo 93 *)


let dice_rolls (   ) =
  let cpt : int ref = ref 0 in 
  let values_tab   = arr.make 
  let throw_result : int = random.int 21
  while  throw_result <> 20 do
    let throw_result : int = random.int 21
    cpt := !cpt + 1 
    values_tabe.() <- 





(* 
    - trouver  nombres de lancés 
    - trouver pour chaque valeur qu'on a, le nombres de fois qu'on l'a eu 
     *)


