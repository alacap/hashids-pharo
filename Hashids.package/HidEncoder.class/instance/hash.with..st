encoding
hash: aNumber with: anAlphabet

	| hashedString value alphabetSize|
	hashedString :=''.
	value := aNumber.
	alphabetSize := anAlphabet size.
	[ value > 0 ] whileTrue: [
		hashedString := (anAlphabet at: (value  \\ alphabetSize + 1)) asString, hashedString.
		value := (value // alphabetSize) roundDownTo: 1.
	].
	^hashedString