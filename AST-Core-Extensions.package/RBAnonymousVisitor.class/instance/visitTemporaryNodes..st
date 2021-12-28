visiting
visitTemporaryNodes: temporaryNodes

	visits
		at: #temporaryNodes
		ifPresent: [ :aBlock | aBlock cull: temporaryNodes ].
	^ super visitTemporaryNodes: temporaryNodes