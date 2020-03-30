visit
visitNode: aNode
	visits at: #node ifPresent: [ :aBlock | aBlock cull: aNode ].
	^ super visitNode: aNode