(* exo 75 *)


let print_title (p_title : string) : unit =
  (
    print_string "*******";
    print_newline ();
    print_string "*";
    print_string p_title;
    print_string "*";
    print_newline ();
    print_string "*******";
    print_newline ()
  )
;;

print_title "Titre";;



(* exo 76 *)

let print_alphabet () =
  let first_lowercase = Char.code 'a' 
  and last_lowercase = Char.code 'z' 
  and first_uppercase = Char.code 'A' 
  and last_uppercase = Char.code 'Z' in

  for i = first_lowercase to last_lowercase do
    (
      print_char (Char.chr i);
      print_string " "
    )   
  done ;
  print_newline ();

 
  for i = last_uppercase downto first_uppercase do

    (
      print_char (Char.chr i);
      print_string " "
    )
  done;
 
;;

print_alphabet ();;



(* exo 77  *)

let multiplication (p_n : int) : unit = 
  if p_n > 0 then 
    for i = 0 to 9 do
      print_int p_n;
      print_string " x ";
      print_int i;
      print_string " = ";
      print_int (p_n * i);
      print_newline ()
    done
;;


let  all_tables ( p_m : int ) : unit =
    for t= 0 to p_m do 
      multiplication t ;
      print_newline ()
    done 
;; 

multiplication 2 ;;
all_tables 6 ;;



(* exo 78  *)

let factoriel (p_n : int) : int =
  let facto = ref 1 in  
  for i = 1 to p_n do
    facto := !facto * i
  done;
  !facto
;;


factoriel 5 ;;


