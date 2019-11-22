(* Alternate input from 2 lists into a single list 
    Ex: alternate([1,3,5],[2,4,6]) -> [1,2,3,4,5,6]*)
fun alternate([],[]) = []
    | alternate(x::xs, y::ys) = x::y::alternate(xs, ys);