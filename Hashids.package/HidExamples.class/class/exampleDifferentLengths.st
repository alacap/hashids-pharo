examples
exampleDifferentLengths
	"Show how you can use the same salt but different minimum lengths"

	| hasher1 hasher2 |
	hasher1 := HidHasher
		newSalt: 'this is my salt'.
	hasher2 := HidHasher
		newSalt: 'this is my salt' minHashLength: 10.
	self
		displayValue: 12345
		withHash: (hasher1 encode: 12345).
	self
		displayValue: 12345
		withHash: (hasher2 encode: 12345)