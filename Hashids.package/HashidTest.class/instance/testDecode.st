tests
testDecode
	| hashidRuleSet numbers |
	hashidRuleSet := HidHasher newSalt: '1234' minHashLength: 8.
	self assert: (hashidRuleSet decode: 'PWkPZRJ5') equals: 123.
	self assert: (hashidRuleSet decode: 'PWkPZRJ5')  equals: 123.
	self assert: ((HidHasher newSalt: '1234') decode: 'PZR') equals: 123.
	numbers := (HidHasher newSalt: '1234' minHashLength: 20)
		decode: 'AOXpabEKPT37hgPJW2KR'.
	self assert: (numbers at: 1) equals: 12234.
	self assert: (numbers at: 2) equals: 123.
	self assert: (numbers at: 3) equals: 56