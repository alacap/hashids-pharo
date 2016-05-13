encoding
encode: input
	^ (input isKindOf: Collection)
		ifFalse: [ self encodeInt: input ]
		ifTrue: [ self encodeCollection: input ]