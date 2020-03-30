visit
visitArgumentNode: anArgumentNode
	visits at: #argumentNode ifPresent: [ :aBlock | aBlock cull: anArgumentNode ].
	^ super visitArgumentNode: anArgumentNode