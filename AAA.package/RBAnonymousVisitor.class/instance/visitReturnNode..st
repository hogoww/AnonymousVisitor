visit
visitReturnNode: aReturnNode
	visits at: #returnNode ifPresent: [ :aBlock | aBlock cull: aReturnNode ].
	^ super visitReturnNode: aReturnNode