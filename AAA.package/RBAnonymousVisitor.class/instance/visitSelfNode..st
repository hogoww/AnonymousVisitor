visit
visitSelfNode: aSelfNode
	visits at: #selfNode ifPresent: [ :aBlock | aBlock cull: aSelfNode ].
	^ super visitSelfNode: aSelfNode