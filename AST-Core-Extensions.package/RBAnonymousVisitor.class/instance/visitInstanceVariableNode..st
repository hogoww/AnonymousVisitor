visiting
visitInstanceVariableNode: instanceVariableNode

	visits
		at: #instanceVariableNode
		ifPresent: [ :aBlock | aBlock cull: instanceVariableNode ].
	^ super visitInstanceVariableNode: instanceVariableNode