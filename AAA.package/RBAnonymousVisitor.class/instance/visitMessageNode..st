visit
visitMessageNode: aMessageNode
	visits at: #messageNode ifPresent: [ :aBlock | aBlock cull: aMessageNode ].
	^ super visitMessageNode: aMessageNode