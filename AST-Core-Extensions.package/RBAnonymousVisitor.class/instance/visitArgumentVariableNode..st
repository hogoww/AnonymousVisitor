visiting - variables
visitArgumentVariableNode: argumentVariableNode

	visits
		at: #argumentVariableNode
		ifPresent: [ :aBlock | aBlock cull: argumentVariableNode ].
	^ super visitArgumentVariableNode: argumentVariableNode