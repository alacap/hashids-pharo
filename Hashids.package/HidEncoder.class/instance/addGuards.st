padding
addGuards
	self hashIsTooShort 
		ifTrue: [ 
			hash :=self guardPrefix , hash].
	self hashIsTooShort 
		ifTrue: [ 
			hash := hash ,  self guardSuffix ].
	^ hash