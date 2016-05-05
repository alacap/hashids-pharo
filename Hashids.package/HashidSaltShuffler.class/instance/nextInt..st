accessing
nextInt: pivot
	| saltChar asciiValue charIndex |
	charIndex := index \\ salt size.
	saltChar := (salt at: (charIndex + 1)).
	asciiValue := saltChar asciiValue.
	asciiValAccumulator := asciiValAccumulator + asciiValue.
	index := index + 1.

	^(asciiValue + charIndex + asciiValAccumulator ) \\ (pivot - 1)+ 1