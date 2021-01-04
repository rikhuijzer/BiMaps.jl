# BidirectionalMaps.jl

Immutable bidirectional map in Julia.


### Usage

```
] add https://github.com/rikhuijzer/BidirectionalMaps.jl
```

```
julia> using BidirectionalMaps

julia> U = ["A", "D", "B"]
...

julia> V = ["F", "G", "B"]
...

julia> b = Bimap{String,String}(U, V)
...

julia> b.left["A"]
"F"

julia> b.right["F"]
"A"
```
