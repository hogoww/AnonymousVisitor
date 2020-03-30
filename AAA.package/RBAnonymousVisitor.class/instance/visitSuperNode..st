visit
visitSuperNode: aSuperNode
	visits at: #superNode ifPresent: [ :aBlock | aBlock cull: aSuperNode ].
	^ super visitSuperNode: aSuperNode