visiting
visitLocalVariableNode: localVariableNode

	visits
		at: #localVariableNode
		ifPresent: [ :aBlock | aBlock cull: localVariableNode ].
	^ super visitLocalVariableNode: localVariableNode