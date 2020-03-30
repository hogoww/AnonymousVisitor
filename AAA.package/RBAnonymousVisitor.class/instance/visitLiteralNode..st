visit
visitLiteralNode: aLiteralNode
	visits at: #literalNode ifPresent: [ :aBlock | aBlock cull: aLiteralNode ].
	^ super visitLiteralNode: aLiteralNode