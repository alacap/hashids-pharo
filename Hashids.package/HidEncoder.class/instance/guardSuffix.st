padding
guardSuffix
	| guardIndex  |
	guardIndex := self guardIndexFor: (hash at: 3).
	^self guardString: guardIndex