tests-register
testVisitorWithOneRegisterHasOneVisit

	| aBlock |
	aBlock := [ :aNode | aNode crTrace ].
	visitor registerBlock: aBlock
		for: #messageNode.
		
	self assert: visitor visits size equals: 1