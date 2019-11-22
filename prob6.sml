(* Powerlist set
    Ex: S = {1,2}
        PowS = {{1,2},{1},{2},{}} *)
(*I got help on this function, time was running short*)

fun powerset [] = [](*base case if empty*)
    | powerset [x] = [[],[x]](**)
    | powerset (x::xs) =
    let
        val power_subset = powerset xs(*creates val which is the next recursive step*)
    in
        (List.map (fn L => x::L) power_subset) @ power_subset(*appends subset to current set*)
    end;


fun union (e, [] : ''a list) : ''a list = [e]
    | union (e, x::xs) =
    if e = x then x::xs
    else x::union(e, xs)
fun insert (e : ''a, [] : ''a list list) : ''a list list = []
    | insert (e, s::ss) = union(e, s)::insert(e, ss)
fun Powerlist [] = [](*core function base case*)
    | Powerlist [x] = [[],[x]]
    | Powerlist (x::xs) =
    let
        val power_subset = powerset xs
    in
        power_subset @ insert(x, power_subset)
    end;