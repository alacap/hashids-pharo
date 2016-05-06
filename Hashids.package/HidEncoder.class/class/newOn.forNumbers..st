as yet unclassified
newOn: aHasher forNumbers: anOrderedCollection
	^ self basicNew
		hasher: aHasher;
		numbers: anOrderedCollection;
		initialize;
		yourself