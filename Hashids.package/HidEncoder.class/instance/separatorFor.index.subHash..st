encoding
separatorFor: number index: index subHash: subHash

	|sepsIndex|
	sepsIndex := (number \\ ((subHash at: 1) asciiValue + index - 1)) \\ separators size.
	^String with: (separators at: sepsIndex + 1) 