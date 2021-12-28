visiting
visitEnglobingErrorNode: englobingErrorNode

	visits
		at: #englobingErrorNode
		ifPresent: [ :aBlock | aBlock cull: englobingErrorNode ].
	^ super visitEnglobingErrorNode: englobingErrorNode