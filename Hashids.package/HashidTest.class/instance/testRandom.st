tests
testRandom
	| hashidRuleSet random a b c d col |
	hashidRuleSet := HidHasher newSalt: '1234' minHashLength: 16.
	random := Random new.
	2000
		timesRepeat: [ 
			a := random nextInt: 1000000.
			b := random nextInt: 1000000.
			c := random nextInt: 20.
			d := random nextInt: 20.
			col := hashidRuleSet
				decode:
					(hashidRuleSet
						encode:
							(OrderedCollection
								with: a
								with: b
								with: c
								with: d)).
			self assert: (col at: 1) equals: a.
			self assert: (col at: 2) equals: b.
			self assert: (col at: 3) equals: c.
			self assert: (col at: 4) equals: d ]