visit
visitVariableNode: aVariableNode
	visits at: #variableNode ifPresent: [ :aBlock | aBlock cull: aVariableNode ].
	^ super visitVariableNode: aVariableNode