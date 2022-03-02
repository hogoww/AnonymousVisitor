configuring
registerBlock: aBlock for: aKindOfNode

	(#( 'variableNode' 'thisContextNode' 'classVariableNode'
	    'storePopIntoTempNode' 'literalNode' 'pragmaNode' 'selectorNode'
	    'argumentNode' 'sequenceNode' 'englobingErrorNode'
	    'node' 'superNode' 'messageNode' 'literalArrayNode'
	    'patternWrapperBlockNode' 'literalVariableNode'
	    'methodNode' 'temporaryDeclarationNode'
	    'selfNode' 'unreachableStatement' 'temporaryVariableNode'
	    'patternBlockNode' 'parseErrorNode' 'localVariableNode'
	    'literalValueNode' 'globalNode' 'returnNode' 'temporaryNode'
	    'storeIntoTempNode' 'blockNode' 'argumentNodes' 'instanceVariableNode'
	    'cascadeNode' 'globalVariableNode' 'slotInitializationNode'
	    'assignmentNode' 'arrayNode' 'argumentVariableNode'
	    'temporaryNodes' ) includes: aKindOfNode) ifFalse: [ 
		self error: aKindOfNode , ' does not seem to exist.' ].
	visits at: #aKindOfNode put: aBlock