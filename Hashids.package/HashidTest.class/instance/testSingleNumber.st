tests
testSingleNumber

	|hashidRuleSet|
	hashidRuleSet := HidHasher newSalt:  '1234' minHashLength: 8.

	self assert: (hashidRuleSet  encode: (OrderedCollection with: 123)) equals: 'PWkPZRJ5'.
	self assert: (hashidRuleSet  encode: (OrderedCollection with: 123)) equals: 'PWkPZRJ5'.
	self assert: ((HidHasher newSalt:  '1234' ) encode: (OrderedCollection with: 123)) equals: 'PZR'.