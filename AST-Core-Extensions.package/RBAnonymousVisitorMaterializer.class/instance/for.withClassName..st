as yet unclassified
for: anAnonymousVisitor withClassName: aClassName
	| newClass instancesVariables | 
	
	instancesVariables := self whatInstanceVariablesToDefine.

	newClass := RBProgramNodeVisitor << aClassName
		slots: instancesVariables asArray;
		package: self class package name;
		install.

	anAnonymousVisitor visits keysAndValuesDo: [ :aNodeKind :aBlock | 
		| selector method |
		selector := anAnonymousVisitor selectorFor: aNodeKind.
		method := selector asMethodWithBody: aBlock withArguments: (instancesVariables collect: [:aVar| aVar -> nil] ) asDictionary.
		newClass compile: method printString
		] 