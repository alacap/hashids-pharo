encoding
encode: numbers
	| input |
	(numbers isKindOf: Collection)
		ifFalse: [ input := OrderedCollection with: numbers ]
		ifTrue: [ input := numbers ].
	^ (HidEncoder newOn: self forNumbers: input) encode