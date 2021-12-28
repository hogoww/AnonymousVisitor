visiting
visitGlobalNode: globalNode

	visits
		at: #globalNode
		ifPresent: [ :aBlock | aBlock cull: globalNode ].
	^ super visitGlobalNode: globalNode