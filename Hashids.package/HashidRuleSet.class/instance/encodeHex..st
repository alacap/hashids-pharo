encoding
encodeHex: aHexString

	^self encode: (OrderedCollection with:( Integer readFrom: aHexString base: 16))