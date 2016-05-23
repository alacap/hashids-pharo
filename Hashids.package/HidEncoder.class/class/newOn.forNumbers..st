instance-creation
newOn: aHasher forNumbers: anOrderedCollection
	^ self basicNew
		hasher: aHasher;
		numbers: anOrderedCollection;
		initialize;
		yourself