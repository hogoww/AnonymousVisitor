as yet unclassified
addInitializeMethod
	| method environments instanceVariablesInititialization body ivNames |
	
	instanceVariables ifEmpty: [ ^ self ].
	
	environments := visitor visits collect: [ :aBlock | aBlock asPCBlock ].
	ivNames := instanceVariables asOrderedCollection collect: #name.
	instanceVariablesInititialization := ivNames flatCollect: [ :anIvName |
			environments select: [ :anEnv | 
				anEnv variables keys includes: anIvName ] 
				thenCollect: [ :anEnv | anIvName -> (anEnv variables at: anIvName) ].
		].
	body := [ ] asPlainCodeBC.
	
	instanceVariablesInititialization asDictionary keysAndValuesDo: [ :anIVName :anIVValue | | ivName valueBuilder |
		valueBuilder := String streamContents: [ :s | anIVValue storeOn: s ].
		ivName := anIVName.
		body add: [ ivName := valueBuilder ]
		 ].
	
	method := 'initialize'
		 asMethodWithBody: body withArguments: (instanceVariables collect: [:aVar| aVar -> nil] ) asDictionary.
	newClass compile: method printString