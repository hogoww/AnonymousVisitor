visiting
visitPatternWrapperBlockNode: patternWrapperBlockNode

	visits
		at: #patternWrapperBlockNode
		ifPresent: [ :aBlock | aBlock cull: patternWrapperBlockNode ].
	^ super visitPatternWrapperBlockNode: patternWrapperBlockNode