as yet unclassified
addVisitMethod
	visitor visits keysAndValuesDo: [ :aNodeKind :aBlock | 
		| selector method |
		selector := visitor selectorFor: aNodeKind.
		method := selector asMethodWithBody: aBlock withArguments: (instanceVariables collect: [:aVar| aVar name -> nil] ) asDictionary.
		newClass compile: method printString
		] 