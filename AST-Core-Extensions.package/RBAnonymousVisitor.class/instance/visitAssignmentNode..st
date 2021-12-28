visiting
visitAssignmentNode: assignmentNode

	visits
		at: #assignmentNode
		ifPresent: [ :aBlock | aBlock cull: assignmentNode ].
	^ super visitAssignmentNode: assignmentNode