tests-materialization
testMaterializedWithNoVariableCreatesAClass
	| classReference |
	visitor registerBlock: [ :aNode | aNode crTrace ]
		for: #messageNode.
		
	visitor materializeAs: #PrintMessageVisitors.
	classReference :=  (self class environment classNamed: #PrintMessageVisitors).
	
	self assert: classReference isNotNil.
	classReference removeFromSystem