visiting
visitLiteralArrayNode: literalArrayNode

	visits
		at: #literalArrayNode
		ifPresent: [ :aBlock | aBlock cull: literalArrayNode ].
	^ super visitLiteralArrayNode: literalArrayNode