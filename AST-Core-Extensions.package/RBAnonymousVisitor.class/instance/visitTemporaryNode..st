visiting
visitTemporaryNode: temporaryNode

	visits
		at: #temporaryNode
		ifPresent: [ :aBlock | aBlock cull: temporaryNode ].
	^ super visitTemporaryNode: temporaryNode