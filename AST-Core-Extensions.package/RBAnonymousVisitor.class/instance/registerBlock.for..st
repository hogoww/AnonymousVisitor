configuring
registerBlock: aBlock for: aKindOfNode

	(#( 'argumentNode' 'argumentNodes' 'argumentVariableNode'
	    'arrayNode' 'assignmentNode' 'blockNode' 'cascadeNode'
	    'classVariableNode' 'englobingErrorNode' 'globalNode'
	    'globalVariableNode' 'instanceVariableNode'
	    'literalArrayNode' 'literalNode' 'literalValueNode'
	    'literalVariableNode' 'localVariableNode' 'messageNode'
	    'methodNode' 'node' 'parseErrorNode' 'patternBlockNode'
	    'patternWrapperBlockNode' 'pragmaNode' 'returnNode' 'selectorNode'
	    'selfNode' 'sequenceNode' 'slotInitializationNode'
	    'storeIntoTempNode' 'storePopIntoTempNode' 'superNode'
	    'temporaryDeclarationNode' 'temporaryNode' 'temporaryNodes'
	    'temporaryVariableNode' 'thisContextNode' 'unreachableStatement'
	    'variableNode' ) includes: aKindOfNode) ifFalse: [ 
		self error: aKindOfNode , ' does not seem to exist.' ].
	visits at: aKindOfNode put: aBlock