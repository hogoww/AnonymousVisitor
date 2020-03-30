visit
visitGlobalNode: aGlobalNode
	visits at: #globalNode ifPresent: [ :aBlock | aBlock cull: aGlobalNode ].
	^ super visitGlobalNode: aGlobalNode