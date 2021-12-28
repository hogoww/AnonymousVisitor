visiting
visitSequenceNode: sequenceNode

	visits
		at: #sequenceNode
		ifPresent: [ :aBlock | aBlock cull: sequenceNode ].
	^ super visitSequenceNode: sequenceNode