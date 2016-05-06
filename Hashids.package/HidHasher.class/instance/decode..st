encoding
decode: aHash
	| result |
	result := self decodeAsCollection: aHash.
	result size > 1
		ifTrue: [ ^ result ]
		ifFalse: [ ^ result at: 1 ]