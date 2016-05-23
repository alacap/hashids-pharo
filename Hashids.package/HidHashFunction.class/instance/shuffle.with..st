encoding
shuffle: aString with: aSalt
	|shuffler shuffledString|
	shuffledString := aString copy.
	shuffler := HidSaltShuffler newOn: aSalt.
	^shuffledString shuffleBy: shuffler.