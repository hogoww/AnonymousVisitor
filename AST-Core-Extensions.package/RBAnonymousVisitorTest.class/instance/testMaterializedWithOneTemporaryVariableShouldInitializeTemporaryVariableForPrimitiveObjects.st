tests-materialization
testMaterializedWithOneTemporaryVariableShouldInitializeTemporaryVariableForPrimitiveObjects
	| counter classReference | 
	counter := 0.
	visitor registerBlock: [ :aNode | counter := counter + 1 ]
		for: #messageNode.
		
	visitor materializeAs: #MessageCounterVisitor.
	
	classReference := self class environment classNamed: #MessageCounterVisitor.

	self assert: classReference >> #initialize initializeVariable: #counter toValue: 0.	
	classReference removeFromSystem