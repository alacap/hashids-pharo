encoding
encode: numbers
	^(HashidEncoder newOn: self forNumbers: numbers ) encode