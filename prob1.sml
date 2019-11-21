(* Alternate input from 2 lists into a single list 
    Ex: alternate([1,3,5],[2,4,6]) -> [1,2,3,4,5,6]*)
fun length [] = 0(*Recursive program with a 0 base case*)
| length (x::xs) = 1 + length xs;(*if exists, then 1 + next level*)
(* to return "length [1,2,3]" is equivalent to an int value*)
(*[1,2,3] can be substituted with any list*)
(* visual output (1+(1+(1+0))) = 3*)
fun sumList [] = 0(*Similar to length, except adds value in list*)
| sumList (x::xs) = x + sumList xs;(*Only works with int lists*)
fun flatten [] = [](*converts lists within lists into a single list[[a],[b]]->[a,b]*)
    | flatten (x::l) = x @ flatten l;
fun alternate(x,y) = []
(*?!?!?!?!?!?!?!??!?!?*)
