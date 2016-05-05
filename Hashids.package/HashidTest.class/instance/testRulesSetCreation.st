as yet unclassified
testRulesSetCreation
	[ HashidRuleSet newSalt: '1234' minHashLength: 4 alphabet: 'bob' ]
		on: Error
		do: [ :error | self assert: error messageText equals: 'Alphabet must only have unique characters' ].
	[ HashidRuleSet newSalt: '1234' minHashLength: 4 alphabet: 'boc' ]
		on: Error
		do: [ :error | self assert: error messageText equals: 'Alphabet must have a minimum of 16 unique characters' ].
	[ HashidRuleSet newSalt: '1234' minHashLength: 4 alphabet: 'bo c' ]
		on: Error
		do: [ :error | self assert: error messageText equals: 'Alphabet must not contain spaces' ]