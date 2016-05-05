padding
trimExcess
	| start_pos excess |
	excess := hash size - ruleSet minHashLength.
	excess > 0
		ifTrue: [ 
			start_pos := excess / 2 roundDownTo: 1.
			hash := hash copyFrom: start_pos + 1 to: start_pos + ruleSet minHashLength ]