initialization
initialize
	super initialize.
	numberHashInt := 0.
	numbers doWithIndex: [:each :index | numberHashInt := numberHashInt + (each \\ (index + 99)) ].
	lottery := alphabet at: numberHashInt \\ alphabet size + 1.	
	hash := String with: lottery.