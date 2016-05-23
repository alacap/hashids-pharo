examples
exampleDecoding
	"Encodes a number and decodes it with the same hasher to get back to the original.  If a different
	salt is used then a different result is returned"

	| hasher1 hasher2 |
	hasher1 := HidHasher newSalt: 'my secret salt' minHashLength: 10.
	hasher2 := HidHasher newSalt: 'my secret pepper' minHashLength: 10.
	self displayValue: 12345 withHash: (hasher1 encode: 12345).
	self displayHash: 'Z0lNX6vWdQ' withValue: (hasher1 decode: 'Z0lNX6vWdQ').
	self displayHash: 'Z0lNX6vWdQ' withValue: (hasher2 decode: 'Z0lNX6vWdQ')