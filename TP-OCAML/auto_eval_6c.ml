let average ( p_image : int array array  ) : int =
  let l_matrix_x : int = Array.length p_image in (* longeur de la matrices en lignes *)
  let l_matrix_y : int = Array.length p_image.(0) in (*donne le nombres de colonne en parcourant le premier tableaux de la matrice*)
  let l_nb_boxes : int = l_matrix_x * l_matrix_y in  (* nombres 'éléments dans la matrices *)  
  let l_somme : int ref =  ref 0 in 
  for i = 0 to l_matrix_x - 1 do 
    for j = 0 to l_matrix_y -1 do 
      l_somme := !l_somme + p_image.(i).(j) (* incrémentation de la somme *)
    done ;
  done;
  !l_somme / l_nb_boxes  (* moyenne de gris *)
;;

average( [| [| 50; 120; 200 |]; [| 80; 180; 250 |] |] ) ;;


let thresholding(p_image, p_threshold : int array array * int  ) :  unit  = 
  let l_matrix_x : int = Array.length p_image (* longeur de la matrices en lignes *)
  and l_matrix_y : int = Array.length p_image.(0)  in (*donne le nombres de colonne en parcourant le premier tableaux de la matrice*)
  for i = 0 to l_matrix_x - 1 do 
    for j = 0 to l_matrix_y - 1 do
      (
        if p_image.(i).(j)  <= p_threshold then 
          p_image.(i).(j)<- 0
        else
          p_image.(i).(j)<- 255
      ) ;
    done 
  done ; 
;;






