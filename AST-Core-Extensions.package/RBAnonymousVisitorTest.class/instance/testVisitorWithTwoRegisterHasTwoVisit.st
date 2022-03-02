tests-register
testVisitorWithTwoRegisterHasTwoVisit

	| aBlock |
	aBlock := [ :aNode | aNode crTrace ].
	visitor registerBlock: aBlock
		for: #messageNode.
	visitor registerBlock: aBlock
		for: #literalNode.
		
	self assert: visitor visits size equals: 2