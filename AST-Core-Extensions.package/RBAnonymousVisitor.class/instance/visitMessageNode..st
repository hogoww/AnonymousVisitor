visiting
visitMessageNode: messageNode

	visits
		at: #messageNode
		ifPresent: [ :aBlock | aBlock cull: messageNode ].
	^ super visitMessageNode: messageNode