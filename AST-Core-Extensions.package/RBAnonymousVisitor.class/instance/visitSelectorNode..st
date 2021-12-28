visiting
visitSelectorNode: selectorNode

	visits
		at: #selectorNode
		ifPresent: [ :aBlock | aBlock cull: selectorNode ].
	^ super visitSelectorNode: selectorNode