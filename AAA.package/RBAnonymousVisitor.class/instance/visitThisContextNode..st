visit
visitThisContextNode: aThisContextNode
	visits at: #thisContextNode ifPresent: [ :aBlock | aBlock cull: aThisContextNode ].
	^ super visitThisContextNode: aThisContextNode