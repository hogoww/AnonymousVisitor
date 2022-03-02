tests-materialization
testMaterializedWithNoVariableInBlockDoesNotCreateInitialize
	| classReference aVariableThatShouldBeIgnored |
	aVariableThatShouldBeIgnored := 12 sqrt.
	visitor registerBlock: [ :aNode | aNode crTrace ]
		for: #messageNode.
		
	visitor materializeAs: #PrintMessageVisitors.
	classReference := (self class environment classNamed: #PrintMessageVisitors).
	
	self deny: (classReference includesSelector: #initialize).
	classReference removeFromSystem