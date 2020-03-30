visit
visitCascadeNode: aCascadeNode
	visits at: #cascadeNode ifPresent: [ :aBlock | aBlock cull: aCascadeNode ].
	^ super visitCascadeNode: aCascadeNode