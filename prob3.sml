(* Union input two lists and output union of the two without duplication*)
    Ex: Union([1,1,1,2,2],[1,1,2,3]) = [1,2,3]
    Ex2:Union([h,e,l,l,o],[w,o,r,l,d]) = [h,e,l,o,w,r,d] 
fun delete(x, []) = [](*removes an element from a list*)
    | delete(x,y::l) = if x=y then delete(x,l) else y::delete(x,l);
fun removeDuplicate [] = [](*removes all duplicate elements*)
    | removeDuplicate (x::l) = x::removeDuplicate(delete(x,l));
fun flatten [] = []
    | flatten (x::l) = x @ flatten l;
fun union(x,y) = removeDuplicate(flatten[x,y]);  ORIGINAL

(*ALTERNATE VERSION
fun delete(x, []) = [](*removes an element from a list*)
    | delete(x,y::l) = if x=y then delete(x,l) else y::delete(x,l);
fun removeDuplicate [] = [](*removes all duplicate elements*)
    | removeDuplicate (x::l) = x::removeDuplicate(delete(x,l));
fun member(x,[]) = false(*if at end of list, return false base case*)
    | member(x,b::y) =(*checks element x against element b from list y, similar to for loop check*)
        if x=b then true(*positive match*)
        else member(x,y);(*position has already changed 2 lines up, so move on to next*)
fun unionList([], y) = y(*union is combo of both lists, so whatever value exists is base case*)
    | unionList(a::x,y) =
        if member(a,y) then union(x,y)
        else a::union(x,y);
fun union*)



