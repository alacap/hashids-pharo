encoding
encodeInt: anInteger
	^ self encodeCollection: (OrderedCollection with: anInteger)