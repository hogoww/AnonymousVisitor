tests-register
testVisitorWithARegisterOveridingTheOtherHasTheLatestRegistered
	| aBlock anotherBlock |
	aBlock := [ :aNode | aNode crTrace ].
	visitor registerBlock: aBlock
		for: #messageNode.
	anotherBlock := [ :aNode | aNode traceCr ].
	visitor registerBlock: anotherBlock
		for: #messageNode.
		
	self assert: (visitor visits at: #messageNode) equals: anotherBlock.