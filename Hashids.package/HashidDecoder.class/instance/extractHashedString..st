as yet unclassified
extractHashedString: aString
	"remove padding before and after the hashed string"

	|tokens| 
	tokens:= aString findTokens: ruleSet guards.
	tokens size > 1 
		ifTrue: [^tokens at: 2].
	^tokens at: 1.
	