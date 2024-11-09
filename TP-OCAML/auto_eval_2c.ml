let one : float ref = ref 1.1 ;;
let two : float ref = ref 2.2 ;;
let three : float ref = ref 3.3 ;;

let accumulate() : unit = 
	two := !one +. !two ; 
	three := !one +. !two +. !three
;;



let word_a : string = "Bonjour" ;;
let word_b : string = "Paul" ;;
let word_c : string = "Martin" ;;

let print_3_words() : unit = 
	print_string word_a ;
	print_newline ();
	print_string word_b;
	print_newline ();
	print_string word_c
;;

