visit
visitInstanceVariableNode: anInstanceVariable
	visits at: #instanceVariableNode ifPresent: [ :aBlock | aBlock cull: anInstanceVariable ].
	^ super visitInstanceVariableNode: anInstanceVariable