visiting
visitLiteralValueNode: literalValueNode

	visits
		at: #literalValueNode
		ifPresent: [ :aBlock | aBlock cull: literalValueNode ].
	^ super visitLiteralValueNode: literalValueNode