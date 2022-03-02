configuring
selectorFor: aNodeKind

	aNodeKind = #variableNode ifTrue: [ ^ #visitVariableNode: ].
	aNodeKind = #thisContextNode ifTrue: [ ^ #visitThisContextNode: ].
	aNodeKind = #classVariableNode ifTrue: [ ^ #visitClassVariableNode: ].
	aNodeKind = #storePopIntoTempNode ifTrue: [ 
		^ #visitStorePopIntoTempNode: ].
	aNodeKind = #literalNode ifTrue: [ ^ #visitLiteralNode: ].
	aNodeKind = #pragmaNode ifTrue: [ ^ #visitPragmaNode: ].
	aNodeKind = #selectorNode ifTrue: [ ^ #visitSelectorNode: ].
	aNodeKind = #argumentNode ifTrue: [ ^ #visitArgumentNode: ].
	aNodeKind = #sequenceNode ifTrue: [ ^ #visitSequenceNode: ].
	aNodeKind = #englobingErrorNode ifTrue: [ 
		^ #visitEnglobingErrorNode: ].
	aNodeKind = #node ifTrue: [ ^ #visitNode: ].
	aNodeKind = #superNode ifTrue: [ ^ #visitSuperNode: ].
	aNodeKind = #messageNode ifTrue: [ ^ #visitMessageNode: ].
	aNodeKind = #literalArrayNode ifTrue: [ ^ #visitLiteralArrayNode: ].
	aNodeKind = #patternWrapperBlockNode ifTrue: [ 
		^ #visitPatternWrapperBlockNode: ].
	aNodeKind = #literalVariableNode ifTrue: [ 
		^ #visitLiteralVariableNode: ].
	aNodeKind = #methodNode ifTrue: [ ^ #visitMethodNode: ].
	aNodeKind = #temporaryDeclarationNode ifTrue: [ 
		^ #visitTemporaryDeclarationNode: ].
	aNodeKind = #selfNode ifTrue: [ ^ #visitSelfNode: ].
	aNodeKind = #unreachableStatement ifTrue: [ 
		^ #visitUnreachableStatement: ].
	aNodeKind = #temporaryVariableNode ifTrue: [ 
		^ #visitTemporaryVariableNode: ].
	aNodeKind = #patternBlockNode ifTrue: [ ^ #visitPatternBlockNode: ].
	aNodeKind = #parseErrorNode ifTrue: [ ^ #visitParseErrorNode: ].
	aNodeKind = #localVariableNode ifTrue: [ ^ #visitLocalVariableNode: ].
	aNodeKind = #literalValueNode ifTrue: [ ^ #visitLiteralValueNode: ].
	aNodeKind = #globalNode ifTrue: [ ^ #visitGlobalNode: ].
	aNodeKind = #returnNode ifTrue: [ ^ #visitReturnNode: ].
	aNodeKind = #temporaryNode ifTrue: [ ^ #visitTemporaryNode: ].
	aNodeKind = #storeIntoTempNode ifTrue: [ ^ #visitStoreIntoTempNode: ].
	aNodeKind = #blockNode ifTrue: [ ^ #visitBlockNode: ].
	aNodeKind = #argumentNodes ifTrue: [ ^ #visitArgumentNodes: ].
	aNodeKind = #instanceVariableNode ifTrue: [ 
		^ #visitInstanceVariableNode: ].
	aNodeKind = #cascadeNode ifTrue: [ ^ #visitCascadeNode: ].
	aNodeKind = #globalVariableNode ifTrue: [ 
		^ #visitGlobalVariableNode: ].
	aNodeKind = #slotInitializationNode ifTrue: [ 
		^ #visitSlotInitializationNode: ].
	aNodeKind = #assignmentNode ifTrue: [ ^ #visitAssignmentNode: ].
	aNodeKind = #arrayNode ifTrue: [ ^ #visitArrayNode: ].
	aNodeKind = #argumentVariableNode ifTrue: [ 
		^ #visitArgumentVariableNode: ].
	aNodeKind = #temporaryNodes ifTrue: [ ^ #visitTemporaryNodes: ].
	self error: 'No node selector exists for this kind of node.'