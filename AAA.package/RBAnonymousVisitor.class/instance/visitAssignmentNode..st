visit
visitAssignmentNode: anAssignmentNode
	visits at: #assignmentNode ifPresent: [ :aBlock | aBlock cull: anAssignmentNode ].
	^ super visitAssignmentNode: anAssignmentNode