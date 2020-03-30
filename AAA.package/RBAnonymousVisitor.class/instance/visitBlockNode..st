visit
visitBlockNode: aBlockNode
	visits at: #blockNode ifPresent: [ :aBlock | aBlock cull: aBlockNode ].
	^ super visitBlockNode: aBlockNode