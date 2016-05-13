instance creation
newSalt: aSalt minHashLength: anInteger alphabet: alpha
	self validateAlphabet: alpha.
	^ self
		newSalt: aSalt
		minHashLength: (anInteger max: 0)
		alphabet: alpha
		separators: self defaultSeparators