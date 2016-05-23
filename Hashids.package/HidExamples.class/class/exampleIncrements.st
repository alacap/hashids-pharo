examples
exampleIncrements
	"Shows how hashids makes it difficult to spot incremental numbers"

	| hasher |
	hasher := HidHasher newSalt: 'my secret salt' minHashLength: 5.
	1 to: 10 do: [ :value |
		self displayValue: value withHash: (hasher encode: value) ]