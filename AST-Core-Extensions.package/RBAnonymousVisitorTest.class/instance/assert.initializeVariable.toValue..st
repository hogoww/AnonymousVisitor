tests-materialization
assert: aCompiledMethod initializeVariable: aName toValue: aValue
	| variables |
	variables := OrderedCollection new.
	visitor := RBAnonymousVisitor new 
		registerBlock: [ :aNode | variables add: aNode ]
		for: #assignmentNode.
	aCompiledMethod ast acceptVisitor: visitor.
	self assert: variables size equals: 1.
	self assert: variables anyOne variable name equals: aName.
	self assert: variables anyOne value value equals: aValue.