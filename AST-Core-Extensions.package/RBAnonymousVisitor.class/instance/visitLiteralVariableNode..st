visiting - variables
visitLiteralVariableNode: literalVariableNode

	visits
		at: #literalVariableNode
		ifPresent: [ :aBlock | aBlock cull: literalVariableNode ].
	^ super visitLiteralVariableNode: literalVariableNode