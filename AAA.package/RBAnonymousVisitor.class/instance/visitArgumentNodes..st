visit
visitArgumentNodes: anArgumentNodes
	visits at: #argumentNodes ifPresent: [ :aBlock | aBlock cull: anArgumentNodes ].
	^ super visitArgumentNodes: anArgumentNodes