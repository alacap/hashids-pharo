as yet unclassified
testSingleNumber

	|hashidRuleSet|
	hashidRuleSet := HashidRuleSet newSalt:  '1234' minHashLength: 8.

	self assert: (hashidRuleSet  encode: (OrderedCollection with: 123)) equals: 'PWkPZRJ5'.
	self assert: (hashidRuleSet  encode: (OrderedCollection with: 123)) equals: 'PWkPZRJ5'.
	self assert: ((HashidRuleSet newSalt:  '1234' ) encode: (OrderedCollection with: 123)) equals: 'PZR'.