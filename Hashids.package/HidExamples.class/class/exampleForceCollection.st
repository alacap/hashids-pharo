examples
exampleForceCollection
	"Shows how you can force a collection of a single element to still return a collection"

	| hasher |
	hasher := HidHasher newSalt: 'my secret salt' minHashLength: 5.
	self displayValue: #(123) withHash: (hasher encode: #(123)).
	self displayHash: 'l4NgW' withValue: (hasher decode: 'l4NgW').
	self displayHash: 'l4NgW' withValue: (hasher decodeAsCollection: 'l4NgW').