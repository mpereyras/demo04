%builtins output 

from starkware.cairo.common.serialize import serialize_word

const hello = 10000805121215 # 08, 05, 12, 12, 15.
const world = 10002315181204 # 23, 15, 18, 12, 04.

# demo04 

func hello_world() -> (word1: felt,word2: felt):
    return (hello, world)
end 

func main{output_ptr: felt*}():
    #let (prod)= mult_dos_nums(3,2)
    let (w1, w2)= hello_world()
    serialize_word(w1)
    serialize_word(w2)
    return()
end 
