visit
visitTemporaryNode: aTemporaryNode
	visits at: #temporaryNode ifPresent: [ :aBlock | aBlock cull: aTemporaryNode ].
	^ super visitTemporaryNode: aTemporaryNode