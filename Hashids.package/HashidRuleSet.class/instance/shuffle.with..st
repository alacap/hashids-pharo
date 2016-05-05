accessing
shuffle: aString with: aSalt

	|shuffler shuffledString|
	shuffledString := aString copy.
	shuffler := HashidSaltShuffler newOn: aSalt.
	^shuffledString shuffleBy: shuffler.