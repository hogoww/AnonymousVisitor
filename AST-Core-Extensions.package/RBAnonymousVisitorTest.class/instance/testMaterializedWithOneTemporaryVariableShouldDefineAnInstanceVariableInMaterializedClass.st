tests-materialization
testMaterializedWithOneTemporaryVariableShouldDefineAnInstanceVariableInMaterializedClass
	| counter classReference | 
	counter := 0.
	visitor registerBlock: [ :aNode | counter := counter + 1 ]
		for: #messageNode.
		
	visitor materializeAs: #MessageCounterVisitor.
	
	classReference := self class environment classNamed: #MessageCounterVisitor.
	self assert: classReference allInstVarNames size equals: 1. 
	self assert: (classReference allInstVarNames anyOne = #counter).
	classReference removeFromSystem