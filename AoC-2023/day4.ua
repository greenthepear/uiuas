# 22230 bytes
&fras "day4input.txt"

Split ← ⊜□≠,

Split @\n
⍚(
  ↘+2⊚⌕@:. # trim before :
  Split @|
  ⍚(⋕ Split @ ) # parse
  /◇∊           # find matches
  /+            # sum up
  (∘|ⁿ-1:2)±.   # for 0, 1, 2, 4, 8
)
°□/+ # sum up