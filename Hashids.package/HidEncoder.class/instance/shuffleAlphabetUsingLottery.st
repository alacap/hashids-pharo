encoding
shuffleAlphabetUsingLottery
	| buffer |
	buffer := (String with: lottery) , hasher salt , alphabet.
	alphabet := self shuffle: alphabet with: (buffer first: alphabet size)