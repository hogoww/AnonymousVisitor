visiting - variables
visitClassVariableNode: classVariableNode

	visits
		at: #classVariableNode
		ifPresent: [ :aBlock | aBlock cull: classVariableNode ].
	^ super visitClassVariableNode: classVariableNode