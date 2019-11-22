(* Intersection takes in multiple sets and creates a list of matching elements in all sets
    Ex: Intersect([[1,1,1,2,2],[1,1,2,3],[2,3,5,5],[3,5,7,4]]) = [] there is no overlaping element in all sets *)
fun member(x,[]) = false(*if at end of list, return false base case*)
    | member(x,b::y) =(*checks element x against element b from list y, similar to for loop check*)
        if x=b then true(*positive match*)
        else member(x,y);
fun aux([],x) = []
    | aux(x::xs,ys) = 
        if member(x,ys)then x::aux(xs,ys)
        else aux(xs,ys);
fun multiSetIntersection([]) = []
    | multiSetIntersection([xs]) = xs
    | multiSetIntersection (xs::xss) = aux(xs, multiSetIntersection(xss));
    