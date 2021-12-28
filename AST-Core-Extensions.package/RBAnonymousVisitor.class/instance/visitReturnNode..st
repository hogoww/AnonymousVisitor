visiting
visitReturnNode: returnNode

	visits
		at: #returnNode
		ifPresent: [ :aBlock | aBlock cull: returnNode ].
	^ super visitReturnNode: returnNode