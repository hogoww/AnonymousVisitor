tests-register
testVisitorWithTwoRegisterHasTheRegisteredBlocksForEachNode
	| aBlock anotherBlock |
	aBlock := [ :aNode | aNode crTrace ].
	visitor registerBlock: aBlock
		for: #messageNode.
	anotherBlock := [ :aNode | aNode traceCr ].
	visitor registerBlock: anotherBlock
		for: #literalNode.
		
	self assert: (visitor visits at: #messageNode) equals: aBlock.
	self assert: (visitor visits at: #literalNode) equals: anotherBlock.