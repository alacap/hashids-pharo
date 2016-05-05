encoding
shuffleAlphabetUsingLottery
	| buffer |
	buffer := (String with: lottery) , ruleSet salt , alphabet.
	alphabet := self shuffle: alphabet with: (buffer first: alphabet size)