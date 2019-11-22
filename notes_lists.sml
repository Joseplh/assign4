(*  List is a homogeneous aggregation
    - aggregarion of values of the same type.
    - Can change sizes
    Tuples are of different types
    - Many types
    - Fixed sizes*)
(*  cons: element * element list -> element list
    type constraint
    nil: type of 'a list, 'a means un defined
    cons(1, nil)                    term of int list
    cons(true, nil)                 term of bool list
    cons(nil, 1)                    ERROR does not work, bad order
    cons(1,cons(2 nil))             a list of 2 ints
    cons((1,2),cons((3,4),nil))     a list containg 2 tuples*)
    (*cons(x,nil)<<cons(1,nil)*)
(*  When variable 'x' is used to denote a list element(single)
    xs denotes a list of x elements(list)
    [1,2,3]                                     int list
    [(1,true),(2,false),(3,true)] (int*bool)    list or a tuple list
    [[1,2],[3],[4,5,6]]                         int list list
    []                                          empty list
    Evaluation is left to right
    -Operand :: = 'a *'a list -> 'a list         takes and element on the left and a list on the right then adds the element to the front of the list
    -Operand @ = 'a list * 'a list -> 'a list    takes two lists and concatonates the second onto the end of the first
    Ex: 1::[]       -> [1]
    Ex: 2::[1]      -> [2,1]
    Ex: 1::2::[]    -> [1,2]
    Ex: 1::[2]::3   -> fails, bad order
    Ex: [1]@[2]     -> [1,2]
    Ex: []@[1]      -> [1]
    Ex: special []::[]->[[]]*)
(*  *)