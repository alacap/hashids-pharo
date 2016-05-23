accessing
initialize
	alphabet := alphabet copyWithoutAll:  separators.
	self shuffleSeparators.
	self shuffleAlphabet.
	guards := alphabet copyFrom: 1to: 4.
	alphabet := alphabet allButFirst: 4 .
	