visit
visitTemporaryNodes: aTemporaryNodes
	visits at: #temporaryNodes ifPresent: [ :aBlock | aBlock cull: aTemporaryNodes ].
	^ super visitTemporaryNodes: aTemporaryNodes