(* finiteListRepresentation takes in a function and number X
    Returns the function output for first X times
    Ex: FLR( posIntSqr, 5 ) = [(1,1),(2,4),(3,9),(4,16),(5,25)]
    Simpple generator??!?*)
fun reverse [] = []
    | reverse (x::xs) = reverse xs @ [x];
fun generate 0 = [](*easy to understand recursive loop*)
    | generate n = [[n,n*n]]@generate (n-1);
fun FLR(x) = reverse(generate x);