tests-materialization
testMaterializedWithOneTemporaryVariableShouldInitializeTemporaryVariableForEmptyOrderedCollection
	| variables classReference | 
	variables := OrderedCollection new.
	visitor := RBAnonymousVisitor new 
		registerBlock: [ :aNode | variables add: aNode ]
		for: #assignmentNode.
		
	visitor materializeAs: #AssignementCollector .
	
	classReference := self class environment classNamed: #AssignementCollector.
	self assert: classReference >> #initialize initializeVariable: #variables toValue: (RBParser parseExpression: 'OrderedCollection new').	
	classReference removeFromSystem