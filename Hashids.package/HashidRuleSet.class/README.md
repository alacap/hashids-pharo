I am a rule set for the Smalltalk implementation of Ivan Akimov's Hashids project (see http://hashids.org)

Hashids is a small open-source library that generates short, unique, non-sequential ids from numbers.

It converts numbers like 347 into strings like “yr8”, or array of numbers like [27, 986] into “3kTMd”.

You can also decode those ids back. This is useful in bundling several parameters into one or simply using them as short UIDs.

It can also encode Hex Strings to a shorter url safe representation.

NB Hashids are used for encoding and whilst relatively difficult to crack they should not be used for encryption.

Instance Variables
	alphabet:			String
	guards:				String
	minHashLength:	Integer
	salt:				String
	separators:			String

alphabet
	- This contains the collection of valid charcaters that can be used to generate the hash.

guards
	- a collection of characters that can be used to delimit the hash if padding is required

minHashLength
	- the minimum number of characters that can appear in a hash

salt
	- a secret string used to salt the hashing algorithm

separators
	- a collection of characters that can be used to separate terms in a multinumber hash.  Careful selection of separators can prevent the occurrence of rude or vulgar terms appearing inside your hash
