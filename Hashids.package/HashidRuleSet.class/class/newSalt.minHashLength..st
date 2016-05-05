as yet unclassified
newSalt: aSalt minHashLength: anInteger 
	^self newSalt: aSalt
		minHashLength: (anInteger max: 0)
		alphabet: self defaultAlphabet.