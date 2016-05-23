examples
exampleEncodeCollection
	"Shows how hashids can handle a collection of values in a single hash"

	| hasher |
	hasher := HidHasher newSalt: 'my secret salt' minHashLength: 5.
	self displayValue: #(123 456 789) withHash: (hasher encode: #(123 456 789)).
	self displayHash: '2G8tq7i6o' withValue: (hasher decode: '2G8tq7i6o')