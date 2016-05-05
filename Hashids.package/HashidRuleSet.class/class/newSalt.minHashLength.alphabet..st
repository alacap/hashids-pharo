as yet unclassified
newSalt: aSalt minHashLength: anInteger alphabet: alpha
	alpha
		detect: [ :each | each isSeparator ]
		ifFound: [ Error signal: 'Alphabet must not contain spaces' ].
	alpha size = alpha asSet size
		ifFalse: [ Error signal: 'Alphabet must only have unique characters' ].
	
	alpha size < 16
		ifTrue: [ Error signal: 'Alphabet must have a minimum of 16 unique characters' ].
	^ self
		newSalt: aSalt
		minHashLength: (anInteger max: 0)
		alphabet: alpha
		separators: self defaultSeparators