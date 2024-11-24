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


(* let dice_rolls () : int * int array =
  let l_rolls = ref (Random.int 21)
  and tab = Array.make (20, 0)  
  and l_i = ref 0
  and l_cpt = ref 0 in
  while !l_rolls <> 20 do
    l_cpt := !l_cpt + 1;
    tab.(!l_rolls - 1) <- tab.(!l_rolls - 1) + 1;
    l_rolls := Random.int 21
  done;
  (!l_cpt, tab)
;;

dice_rolls() ;;
 *)







 

 let dice_20_faces() : int array * int = 
  let l_fice : int_array = arr_make 20 0 
  and l_random_face : int ref = ref 0
  and l_nb_rolls : int  ref = ref 0 in
  while l_dice.(19) = 0 do 
    ( 
      l_random_face := random.int 20;
      l_dice.(!l_random_face) <- l_dice.(!l_random_face) +1 ;
      l_nb_rolls := ! l_nb_rolls +1 

    );
  done 

  (l_dice , !l_nb_rolls)

;;





(* exo 94 *)


let shift_left (p_tab : int array) : int array = 
  let l_a = p_tab.(0) 
  and l_length = Array.length p_tab - 1 in
  for i = 0 to l_length - 1 do 
    p_tab.(i) <- p_tab.(i + 1)
  done;
  p_tab.(l_length) <- l_a;
  p_tab
;;

(* Exemple d'appel de la fonction *)
shift_left [|1; 2; 3; 4; 5|];;

