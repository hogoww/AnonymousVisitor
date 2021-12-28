visiting - variables
visitTemporaryVariableNode: temporaryVariableNode

	visits
		at: #temporaryVariableNode
		ifPresent: [ :aBlock | aBlock cull: temporaryVariableNode ].
	^ super visitTemporaryVariableNode: temporaryVariableNode