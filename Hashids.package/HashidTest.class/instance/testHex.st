tests
testHex

	| hex |

	hex := (HidHasher newSalt:  '1234' minHashLength: 20) decodeHex: '9qrZ1yzkErVx8XEPKY63'.	
	self assert: hex equals: '2FCA'.
	self assert: ((HidHasher newSalt:  '1234' minHashLength: 20) encodeHex: '2FCA' ) equals: '9qrZ1yzkErVx8XEPKY63'.	