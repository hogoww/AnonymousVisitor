as yet unclassified
materialize: anAnonymousVisitor as: aClassName
	| newClass | 
	
	anAnonymousVisitor visits do:[ :aBlock| 
		aBlock compiledBlock ast allVariables select: [ :aVariable | 
			(aBlock compiledBlock ast whoDefines: aVariable name) isNil ]
		].
	newClass := self subclass: aClassName.
	anAnonymousVisitor visits keysAndValuesDo: [ :aNodeKind :aBlock | 
		| selector method |
		selector := anAnonymousVisitor selectorFor: aNodeKind.
		method := selector asMethodWithBody: aBlock.
		newClass compile: method printString
		]