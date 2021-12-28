visiting
visitArgumentNode: argumentNode

	visits
		at: #argumentNode
		ifPresent: [ :aBlock | aBlock cull: argumentNode ].
	^ super visitArgumentNode: argumentNode