module BidirectionalMaps

using Base: ImmutableDict

export ImmutableBimap

struct ImmutableBimap{S,T}
  left::ImmutableDict{S,T}
  right::ImmutableDict{T,S}

  function ImmutableBimap{S,T}(U, V) where {S,T}
      vec2pairs(X, Y) = [first(t) => last(t) for t in zip(X, Y)]
      left = ImmutableDict(vec2pairs(U, V)...)
      right = ImmutableDict(vec2pairs(V, U)...)
      new(left, right)
  end
end

end # module
