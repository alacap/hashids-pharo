encoding
decodeHex: aHash
	^((self decode: aHash) at: 1) printStringHex 