visiting
visitSelfNode: selfNode

	visits at: #selfNode ifPresent: [ :aBlock | aBlock cull: selfNode ].
	^ super visitSelfNode: selfNode