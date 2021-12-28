visiting
visitArgumentNodes: argumentNodes

	visits
		at: #argumentNodes
		ifPresent: [ :aBlock | aBlock cull: argumentNodes ].
	^ super visitArgumentNodes: argumentNodes