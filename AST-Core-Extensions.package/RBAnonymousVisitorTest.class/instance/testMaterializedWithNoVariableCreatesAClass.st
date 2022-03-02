tests-materialization
testMaterializedWithNoVariableCreatesAClass

	visitor registerBlock: [ :aNode | aNode crTrace ]
		for: #messageNode.
		
	visitor materializeAs: #PrintMessageVisitors.
	
	self assert: (self class environment classNamed: #PrintMessageVisitors ) isNotNil
	