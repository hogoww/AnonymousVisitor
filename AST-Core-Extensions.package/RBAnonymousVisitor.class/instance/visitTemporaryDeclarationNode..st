visiting
visitTemporaryDeclarationNode: temporaryDeclarationNode

	visits
		at: #temporaryDeclarationNode
		ifPresent: [ :aBlock | aBlock cull: temporaryDeclarationNode ].
	^ super visitTemporaryDeclarationNode: temporaryDeclarationNode