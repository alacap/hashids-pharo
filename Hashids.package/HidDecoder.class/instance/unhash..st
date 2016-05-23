as yet unclassified
unhash: aHash
	| number pos |
	number := 0.
	aHash 
		doWithIndex: [ :hashChar :index | 
			pos := (alphabet indexOf: hashChar) - 1.
			number := number + (pos * (alphabet size raisedTo: (aHash size - index )))].
	^ number.