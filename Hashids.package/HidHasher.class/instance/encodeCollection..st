encoding
encodeCollection: numbers
	^ (HidEncoder newOn: self forNumbers: numbers) encode