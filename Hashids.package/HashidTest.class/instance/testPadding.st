as yet unclassified
testPadding


	self assert: ((HashidRuleSet newSalt:  '1234' minHashLength: 100) encode: (OrderedCollection with: 123)) equals:'oPQp7G9rPoVmnExNZw6yzW0ldB49dYrq70XOb1pnGRwLN6PWkPZRJ5ZyevxzojEA3V2DgKQlMBmXDbApjK2451g3ROQqLveMYVdE'