examples
exampleDifferentSalts
	"Opens the transcript and writes out some example encodings of random integers"

	| hasher1 hasher2 |
	hasher1 := HidHasher newSalt: 'this is my salt'.
	hasher2 := HidHasher newSalt: 'this is my pepper'.
	self displayValue: 12345 withHash: (hasher1 encode: 12345).
	self displayValue: 12345 withHash: (hasher2 encode: 12345).