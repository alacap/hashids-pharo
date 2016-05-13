encoding
encode
	numbers doWithIndex: [ :num :index | 
		self appendHashFor: num at: index ].
	^ self paddedToMinLength