visiting
visitPatternBlockNode: patternBlockNode

	visits
		at: #patternBlockNode
		ifPresent: [ :aBlock | aBlock cull: patternBlockNode ].
	^ super visitPatternBlockNode: patternBlockNode