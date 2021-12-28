visiting - variables
visitGlobalVariableNode: globalVariableNode

	visits
		at: #globalVariableNode
		ifPresent: [ :aBlock | aBlock cull: globalVariableNode ].
	^ super visitGlobalVariableNode: globalVariableNode