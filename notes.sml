(* Our first SML program *)
print "\n\nhello world\n\n";
fun isEven  n = n mod 2 = 0;
fun succ    n = if isEven n then n div 2 else 3 * n + 1;

fun maxOf (v, w) = if v < w then w else v;

fun threeN n =
    let 
        val trackFn = maxOf

        fun aux (1,max) = trackFn (1,max)
        |   aux (n,max) = aux( succ n, trackFn(n,max) )
    in
        aux( n, 0 )
    end;

threeN 7;
fun length [] = 0(*Recursive program with a 0 base case*)
| length (x::xs) = 1 + length xs;(*if exists, then 1 + next level*)
(* to return "length [1,2,3]" is equivalent to an int value*)
(*[1,2,3] can be substituted with any list*)
(* visual output (1+(1+(1+0))) = 3*)
fun sumList [] = 0(*Similar to length, except adds value in list*)
| sumList (x::xs) = x + sumList xs;(*Only works with int lists*)
fun isFactorOf (k,n) = n mod k = 0;
fun isPrime n =
    if n < 2 then false
    else (*Could be prime*)
        let
            fun aux 1 = true
              | aux k = if isFactorOf(k,n) then false
                else aux (k-1)               
        in
            aux (n-1)
        end;
fun validateIsPrime []          = true(*checks all values in list*)
    | validateIsPrime (x::xs)   = isPrime x
                                  andalso(*If ALL is prime, return true*)
                                  validateIsPrime xs;
fun validateNonPrime []          = true(*checks all values in list*)
    | validateNonPrime (x::xs)   = not (isPrime x)
                                  andalso(*If ALL is non-prime, return true*)
                                  validateNonPrime xs;
fun maxOf [x] = x
  | maxOf (x::xs) =
    let
        val max = maxOf xs
    in
        if x < max then max else x
    end;
fun generate 0 = [](*generates a list from 1-n*)
  | generate n = n :: generate (n-1);(*n :: generate appends generate after n in list*)
(*generate 10 creates [10,9,8,7,6,5,4,3,2,1]*)
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
fun test primes = 
    let
        val maxPrime = maxOf primes;
        val integerList = generate maxPrime;
        val nonPrimeList = filter (primes, integerList);
    in
        validateNonPrime nonPrimeList
    end;
    fun delete(x, []) = [](*removes an element from a list*)
      | delete(x,y::l) = if x=y then delete(x,l) else y::delete(x,l);
    fun removeDuplicate [] = [](*removes all duplicate elements*)
      | removeDuplicate (x::l) = x::removeDuplicate(delete(x,l));
    fun simpleMerge [] = []
      | simpleMerge (x::l) = x @ simpleMerge l;

