visit
visitSequenceNode: aSequenceNode
	visits at: #sequenceNode ifPresent: [ :aBlock | aBlock cull: aSequenceNode ].
	^ super visitSequenceNode: aSequenceNode