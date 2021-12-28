visiting
visitLiteralNode: literalNode

	visits
		at: #literalNode
		ifPresent: [ :aBlock | aBlock cull: literalNode ].
	^ super visitLiteralNode: literalNode