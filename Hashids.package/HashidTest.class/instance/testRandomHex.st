tests
testRandomHex
	| hashidRuleSet random hexString result |
	hashidRuleSet := HidHasher newSalt: '1234' minHashLength: 16.
	random := Random new.
	2000
		timesRepeat: [ 
			hexString := (random nextInt: 10000000000000000000000000000000000000) hex allButFirst: 3.
			result := hashidRuleSet	encodeHex: hexString.
			self assert: hexString equals: (hashidRuleSet decodeHex: result).]