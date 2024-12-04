let title (p_title, p_char, p_page_width : string * char * int) : string = 
  let l_first_half = ref "" in   (* chaine de caractères s'affichant avant le titre *)
  let l_second_half = ref "" in  (* chaine de caractères s'affichant après le titre *)
  let l_title_length = String.length p_title + 2 in   (* longueur du titre en comptant l'espace avant et après ce dernier*)
  let l_remain_spots = p_page_width - l_title_length in  (* la longueur de la page en excluant la longueur du titre *)
  if p_page_width <= 0 then
    failwith "ERROR!"   (* verifie que le paramètres p_page_width est cohérent*)
  else if String.length p_title + 2 > p_page_width then  
    failwith "ERROR! Please select a title with a correct size."
  else
    for i = 0 to l_remain_spots / 2 do
      l_first_half := !l_first_half ^ ( Char.escaped ( p_char ))
    done;
    for j = l_remain_spots / 2 to l_remain_spots do 
      l_second_half := !l_second_half ^ (Char.escaped ( p_char ))
    done;
    !l_first_half ^ " " ^ p_title ^ " " ^ !l_second_half
;;

title ("Le titre", '*', 50) ;;

 







let text (p_text, p_page_width : string * int) : string =
  (* Vérifie si la largeur de la page est valide *)
  if p_page_width <= 0 then
    failwith "ERROR! ."
  else
    let l_text_length = String.length p_text in
    let l_res = ref "" in
    let l_current_line_length = ref 0 in
    let l_word = ref "" in

    (* Parcourt chaque caractère du texte *)
    for i = 0 to l_text_length - 1 do
      let l_char = String.get p_text i in
      (* Si le caractère est un espace *)
      if l_char = ' ' then (
        (* Vérifie si le mot courant peut être ajouté à la ligne actuelle *)
        if !l_current_line_length + String.length !l_word > p_page_width then (
          (* Ajoute le mot à une nouvelle ligne *)
          l_res := !l_res ^ "\n" ^ !l_word;
          l_current_line_length := String.length !l_word
        ) else (
          (* Ajoute le mot à la ligne actuelle *)
          if !l_current_line_length > 0 then (
            l_res := !l_res ^ " " ^ !l_word;
            l_current_line_length := !l_current_line_length + String.length !l_word + 1
          ) else (
            l_res := !l_res ^ !l_word;
            l_current_line_length := String.length !l_word
          )
        );
        (* Réinitialise le mot courant *)
        l_word := ""
      ) else (
        (* Ajoute le caractère au mot courant *)
        l_word := !l_word ^ String.make 1 l_char
      )
    done;

    (* Ajoute le dernier mot à la ligne *)
    if !l_current_line_length + String.length !l_word > p_page_width then
      l_res := !l_res ^ "\n" ^ !l_word
    else
      l_res := !l_res ^ " " ^ !l_word;

    !l_res
;;

(* Exemple d'utilisation de la fonction *)
text ("Un grand texte, sur 2 lignes.", 10);;