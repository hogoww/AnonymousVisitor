visit
visitLiteralValueNode: aLiteralValueNode
	visits at: #literalValueNode ifPresent: [ :aBlock | aBlock cull: aLiteralValueNode ].
	^ super visitLiteralValueNode: aLiteralValueNode