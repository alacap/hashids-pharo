as yet unclassified
decode: aString

	| hashedString lotteryChar  subHashes |
	hashedString := self extractHashedString: aString.
	lotteryChar := hashedString at: 1.
	subHashes := self extractSubHashes: (hashedString allButFirst: 1).
	^subHashes collect: [ :eachHash | self unhash: eachHash lottery: lotteryChar  ].