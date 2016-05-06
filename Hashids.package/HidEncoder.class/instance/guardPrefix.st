padding
guardPrefix
	| guardIndex  |
	guardIndex := self guardIndexFor: hash first.
	^self guardString: guardIndex