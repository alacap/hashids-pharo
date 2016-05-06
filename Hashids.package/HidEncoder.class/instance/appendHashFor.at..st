encoding
appendHashFor: num at: index
	| subHash |
	self shuffleAlphabetUsingLottery.
	subHash := self hash: num with: alphabet.
	hash := hash , subHash.
	index < numbers size
		ifTrue: [ hash := hash , (self separatorFor: num index: index subHash: subHash) ]