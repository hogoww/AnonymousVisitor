visiting
visitMethodNode: methodNode

	visits
		at: #methodNode
		ifPresent: [ :aBlock | aBlock cull: methodNode ].
	^ super visitMethodNode: methodNode