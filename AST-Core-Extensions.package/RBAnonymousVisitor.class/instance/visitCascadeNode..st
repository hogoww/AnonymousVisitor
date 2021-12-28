visiting
visitCascadeNode: cascadeNode

	visits
		at: #cascadeNode
		ifPresent: [ :aBlock | aBlock cull: cascadeNode ].
	^ super visitCascadeNode: cascadeNode