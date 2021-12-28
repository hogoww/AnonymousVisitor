visiting
visitUnreachableStatement: unreachableStatement

	visits
		at: #unreachableStatement
		ifPresent: [ :aBlock | aBlock cull: unreachableStatement ].
	^ super visitUnreachableStatement: unreachableStatement