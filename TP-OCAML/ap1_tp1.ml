(*Nabil ABASSI*)
9 ;;
2.0 ;;
'a' ;; 
"bonjour";;
true;;
false;;
type t_point = { x : float ; y : float } ;;
{x = 5.3 ; y = 2.4 };;
type t_vector = { dx : float ; dy : float } ;;
{dx = 0.56 ; dy = 5.} ;;
(1,'z') ;;
();;
("hello", true, 'c');;
{dx = 5.0 +. 2.3 ; dy = 7.9} ;;

-4 ;;
8 ;; 
4.0 ;;
-8.0 ;;
'14' ;;
'8' ;; 
'-4';  (*c'est  chaine de caractères il faut mettre " "*)
"14" ;;
"8" ;; 
"-4" ;; 
'?' ;; 
"4’ ;;
'a' ;; 
"a" ;; 
"I like AP1" ;;
true ;;
"true" ;;
(2,2,"12", ()) ;; 
' " ' ;; 
('a',12,'12') ;;


{x = 3 ; y = 5.6} (* 3 est un int on a définit x comme float*)
{x = 5.7 ; dy = 2.4}


4.4 + 3 ;; (*pas les mêmes types*)

4.0 + 3.0 ;; (*+. pour les float*)

3.1 +.2.0 ;;

2>4 ;;

3<=3;;

3.4 > 0;; (*pas les mêmes types *)

2.2 >. 0.0 ;; (*>. n'existe pas *)

true = false ;;

7.0/.2.;;

true<>false;;

3 <> 'a' ;; (* pas le même type *)

'a' > 'b' ;;

'a' + 'b' ;; (* + est pour les INT *)

"Hello" ^ " World" ;; (*"concatene deu chaines de caractères"*)

"Hello" ^ " !" ;;

"Hello" ^ '!' ;; (*pas le même type*)

1<>0 = false ;;

false || true;;


(*exercice 4*)

let result : (int*int) = (7/3, 7 mod 3) ;;

let (div, rest) : (int*int) = result ;;

(*exercice 5*)

type t_date = { jour : int ; mois : int ; annee : int} ;;

let begin_century : t_date  = { jour = 1 ; mois = 01 ; annee = 2001} ;;

let today : t_date = { jour = 10 ; mois = 09 ; annee = 2024 } ;;

