visiting
visitThisContextNode: thisContextNode

	visits
		at: #thisContextNode
		ifPresent: [ :aBlock | aBlock cull: thisContextNode ].
	^ super visitThisContextNode: thisContextNode