visiting
visitVariableNode: variableNode

	visits
		at: #variableNode
		ifPresent: [ :aBlock | aBlock cull: variableNode ].
	^ super visitVariableNode: variableNode