tests-register
testVisitorWithOneRegisterHasTheRegisteredBlockForThisKindOfNode

	| aBlock |
	aBlock := [ :aNode | aNode crTrace ].
	visitor registerBlock: aBlock
		for: #messageNode.
		
	self assert: (visitor visits at: #messageNode) equals: aBlock