(* Union input two lists and output union of the two without duplication
    Ex: Union([1,1,1,2,2],[1,1,2,3]) = [1,2,3]
    Ex2:Union([h,e,l,l,o],[w,o,r,l,d]) = [h,e,l,o,w,r,d] *)
fun delete(x, []) = [](*removes an element from a list*)
    | delete(x,y::l) = if x=y then delete(x,l) else y::delete(x,l);
fun removeDuplicate [] = [](*removes all duplicate elements*)
    | removeDuplicate (x::l) = x::removeDuplicate(delete(x,l));
fun flatten [] = []
    | flatten (x::l) = x @ flatten l;
fun union(x,y) = removeDuplicate(flatten[x,y]);