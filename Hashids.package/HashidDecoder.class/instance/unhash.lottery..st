as yet unclassified
unhash: eachHash lottery: aLottery

		|buffer|
		buffer := (String with: aLottery), ruleSet salt, alphabet.
		alphabet := self shuffle: alphabet with: (buffer first: alphabet size).
		^self unhash: eachHash.