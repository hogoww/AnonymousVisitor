visiting
visitParseErrorNode: parseErrorNode

	visits
		at: #parseErrorNode
		ifPresent: [ :aBlock | aBlock cull: parseErrorNode ].
	^ super visitParseErrorNode: parseErrorNode