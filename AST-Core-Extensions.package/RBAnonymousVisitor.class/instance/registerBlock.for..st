configuring
registerBlock: aBlock for: aKindOfNode

	(#( 'literalValueNode' 'patternBlockNode' 'selfNode' 'methodNode'
	    'classVariableNode' 'thisContextNode' 'localVariableNode'
	    'storePopIntoTempNode' 'englobingErrorNode' 'variableNode'
	    'argumentNodes' 'node' 'literalArrayNode' 'temporaryVariableNode'
	    'messageNode' 'returnNode' 'patternWrapperBlockNode'
	    'globalVariableNode' 'temporaryDeclarationNode'
	    'selectorNode' 'literalNode' 'literalVariableNode'
	    'storeIntoTempNode' 'pragmaNode' 'globalNode' 'blockNode'
	    'parseErrorNode' 'slotInitializationNode'
	    'assignmentNode' 'arrayNode' 'instanceVariableNode'
	    'temporaryNodes' 'sequenceNode' 'superNode' 'argumentVariableNode'
	    'cascadeNode' 'argumentNode' 'temporaryNode' 'unreachableStatement' ) 
		 includes: aKindOfNode) ifFalse: [ 
		self error: aKindOfNode , ' does not seem to exist.' ].
	visits at: #aKindOfNode put: aBlock