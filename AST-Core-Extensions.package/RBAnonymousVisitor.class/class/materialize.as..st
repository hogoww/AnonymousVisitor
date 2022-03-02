as yet unclassified
materialize: anAnonymousVisitor as: aClassName
	| newClass instancesVariables | 
	
	instancesVariables := Set withAll: (anAnonymousVisitor visits flatCollect:[ :aBlock| | aBlockAST | 
		aBlockAST := aBlock compiledBlock ast. 
		(aBlockAST allVariables reject: [ :aVariable | 
			(aBlockAST whoDefines: aVariable name) = aBlockAST ]) 
			collect: [ :aVariable | aVariable name ]
		]).

	newClass := self superclass << aClassName
		slots: instancesVariables asArray;
		package: self class package name;
		install.

	anAnonymousVisitor visits keysAndValuesDo: [ :aNodeKind :aBlock | 
		| selector method |
		selector := anAnonymousVisitor selectorFor: aNodeKind.
		method := selector asMethodWithBody: aBlock withArguments: (instancesVariables collect: [:aVar| aVar -> nil] ) asDictionary.
		newClass compile: method printString
		] 