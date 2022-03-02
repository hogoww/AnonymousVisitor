tests-materialization
testMaterializedWithNoVariableDoesNotCreateInitialize
	| classReference |
	visitor registerBlock: [ :aNode | aNode crTrace ]
		for: #messageNode.
		
	visitor materializeAs: #PrintMessageVisitors.
	classReference := (self class environment classNamed: #PrintMessageVisitors).
	
	self deny: (classReference includesSelector: #initialize).
	classReference removeFromSystem