tests
testMultiNumber
	self
		assert:
			((HidHasher newSalt: '1234' minHashLength: 12)
				encode: (OrderedCollection with: 12234 with: 123 with: 56))
		equals: 'abEKPT37hgPJ'