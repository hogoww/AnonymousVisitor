visiting
visitArrayNode: arrayNode

	visits at: #arrayNode ifPresent: [ :aBlock | aBlock cull: arrayNode ].
	^ super visitArrayNode: arrayNode