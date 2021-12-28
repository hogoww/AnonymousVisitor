visiting
visitPragmaNode: pragmaNode

	visits
		at: #pragmaNode
		ifPresent: [ :aBlock | aBlock cull: pragmaNode ].
	^ super visitPragmaNode: pragmaNode