&fras "day2input.txt"
Split ← ⊜□≠,

Split @\n

⍚(
  ↘+2⊚⌕@:. # trim before :
  Split @;
  ⍚(
    Split@,
    ⍚(⊢⊚/↧⍉∊"red"_"gre"_"blu".) # find in which substr is color
    :
    ⍚(⋕ ⊢Split @ ) # parse number
    ⍉⊟:∩∵°□        # unbox stuff
    ⊚/↧⍉⊞≠⇡3⊢⍉.    # find if colors are missing
    (◌|⊂≡(⊂:0))±⧻. # add 0 for missing colors

    ⊡1⍉⊏⍏. # sort and select
  )
  /↥   # find max of each color (row)
  /×°□ # find power
)
°□/+