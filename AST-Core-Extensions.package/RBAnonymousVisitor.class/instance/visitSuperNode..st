visiting
visitSuperNode: superNode

	visits at: #superNode ifPresent: [ :aBlock | aBlock cull: superNode ].
	^ super visitSuperNode: superNode