(* Cartesian Product Function
    Ex: S1 = {a,b,c}
        S2 = {1,2}
        S1xS2 = {(a,1),(a,2),(b,1),(b,2),(c,1),(c,2)}*)
        (*hint: *)

fun prodBlock ([],_) = [](*takes 2 sets and multiplies eachother, returns new set*)
    | prodBlock ((x::xs), ys) = map (fn y => (x,y)) ys @ prodBlock (xs, ys)
fun Cartesian zs = foldl (fn (xs, ys) => map op:: (prodBlock (xs, ys))) [[]] (rev zs);
(*Fold video: Notable slides SML 190 - fold.pptx*)