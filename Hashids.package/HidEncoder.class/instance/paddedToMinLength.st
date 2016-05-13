padding
paddedToMinLength
	self addGuards.
	[ self hashIsTooShort ]
		whileTrue: [ 
			alphabet := self shuffle: alphabet with: alphabet.
			hash := self secondHalfOfAlphabet , hash , self firstHalfOfAlphabet.
			self trimExcess ].
	^ hash