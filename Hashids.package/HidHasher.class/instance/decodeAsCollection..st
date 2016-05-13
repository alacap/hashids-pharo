encoding
decodeAsCollection: aHash
	^(HidDecoder newOn: self) decode: aHash.