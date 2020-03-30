visit
visitMethodNode: aMethodNode
	visits at: #methodNode ifPresent: [ :aBlock | aBlock cull: aMethodNode ].
	^ super visitMethodNode: aMethodNode