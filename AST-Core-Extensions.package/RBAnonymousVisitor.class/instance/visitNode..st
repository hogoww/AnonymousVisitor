visiting
visitNode: node

	visits at: #node ifPresent: [ :aBlock | aBlock cull: node ].
	^ super visitNode: node