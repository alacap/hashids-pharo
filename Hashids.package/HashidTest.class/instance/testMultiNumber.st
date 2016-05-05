as yet unclassified
testMultiNumber

	self assert: ((HashidRuleSet newSalt:  '1234' minHashLength: 12) encode: (OrderedCollection with: 12234 with: 123 with: 56)) equals: 'abEKPT37hgPJ'