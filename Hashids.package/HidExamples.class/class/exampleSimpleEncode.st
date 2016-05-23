examples
exampleSimpleEncode
	"Opens the transcript and writes out some example encodings of random integers"

	| hasher |
	hasher := HidHasher newSalt: 'this is my salt'.
	self 
		displayValue: 12345
		withHash: (hasher encode: 12345)