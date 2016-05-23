as yet unclassified
unhash: eachHash lottery: aLottery
		|buffer|
		buffer := (String with: aLottery), hasher salt, alphabet.
		alphabet := self shuffle: alphabet with: (buffer first: alphabet size).
		^self unhash: eachHash.