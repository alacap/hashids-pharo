instance-creation
newOn: aHasher
	^ self basicNew
		hasher: aHasher;
		initialize;
		yourself