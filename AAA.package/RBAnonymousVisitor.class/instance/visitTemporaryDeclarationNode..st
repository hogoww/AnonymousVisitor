visit
visitTemporaryDeclarationNode: aTemporaryDeclarationNodes
	visits at: #temporaryDeclarationNodes ifPresent: [ :aBlock | aBlock cull: aTemporaryDeclarationNodes ].
	^ super visitTemporaryDeclarationNode: aTemporaryDeclarationNodes