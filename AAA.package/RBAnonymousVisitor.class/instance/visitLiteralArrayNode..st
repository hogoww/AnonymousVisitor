visit
visitLiteralArrayNode: aLiteralArrayNode
	visits at: #literalArrayNode ifPresent: [ :aBlock | aBlock cull: aLiteralArrayNode ].
	^ super visitLiteralArrayNode: aLiteralArrayNode