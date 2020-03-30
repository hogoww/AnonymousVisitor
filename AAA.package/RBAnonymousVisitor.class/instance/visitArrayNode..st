visit
visitArrayNode: anArrayNode
	visits at: #arrayNode ifPresent: [ :aBlock | aBlock cull: anArrayNode ].
	^ super visitArrayNode: anArrayNode