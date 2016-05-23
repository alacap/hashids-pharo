examples
exampleEncodeHex
	"Shows how hashids can handle Hex values"

	| hasher |
	hasher := HidHasher newSalt: 'my secret salt' minHashLength: 5.
	self displayValue: '12A5F' withHash: (hasher encodeHex: '12A5F').
	self displayHash: 'WJrNe' withValue: (hasher decodeHex: 'WJrNe').