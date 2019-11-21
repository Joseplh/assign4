(* Minus input integer lists
    Ex: input([1,1,1,2,2],[1,1,2,3])
        minus([1,1,1,2,2],[1,1,2,3]) = [1,2] integers in common
        minus([1,1,1,2,2],[1,1,2,3]) = [3] after removing common integers*)
fun delete(x, []) = [](*removes an element from a list*)
    | delete(x,y::l) = if x=y then delete(x,l) else y::delete(x,l);
fun removeDuplicate [] = [](*removes all duplicate elements*)
    | removeDuplicate (x::l) = x::removeDuplicate(delete(x,l));
fun remove (_, []) = [](*Assumes all elements are unique*)
    | remove (x, y::ys) = if x = y then ys
        else y :: remove (x,ys);
fun filter ([],    ys) = ys
    | filter (x::xs, ys) =
    let
        val ysWithoutX = remove (x, ys)
    in  (*filter([1,2,3],[1,4,2,6,3,7]) -> [4,6,7]  must have unique elements*)
        filter(xs, ysWithoutX)
    end;
fun minus(x,y) = filter(removeDuplicate(x), removeDuplicate(y));