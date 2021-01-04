# BidirectionalMaps.jl

Immutable bidirectional map in Julia.

In most cases, you probably don't want to use this package but rather

- [Bijections.jl](https://github.com/scheinerman/Bijections.jl) or
- [CategoricalArrays.jl](https://github.com/JuliaData/CategoricalArrays.jl).

### Usage

```
] add https://github.com/rikhuijzer/BidirectionalMaps.jl
```

```
julia> using BidirectionalMaps

julia> U = ["A", "D", "B"];

julia> V = ["F", "G", "B"];

julia> b = ImmutableBimap{String,String}(U, V);

julia> b.left["A"]
"F"

julia> b.right["F"]
"A"
```
