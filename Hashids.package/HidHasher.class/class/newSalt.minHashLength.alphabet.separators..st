instance creation
newSalt: aSalt minHashLength: anInteger alphabet: aString separators: sepString
	^self basicNew
		salt: aSalt;
		minHashLength: (anInteger max: 0);
		alphabet: aString;
		separators: sepString;
		initialize;
		yourself