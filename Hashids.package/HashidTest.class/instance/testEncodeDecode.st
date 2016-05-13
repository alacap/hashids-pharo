tests
testEncodeDecode

	| ruleSet |

	ruleSet := HidHasher newSalt:  '1234' minHashLength: 20.
	self assert: (ruleSet decode: (ruleSet encode: 1234)) equals: 1234