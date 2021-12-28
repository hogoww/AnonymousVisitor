as yet unclassified
generateMethods
	| methods register visits registerCode |
	methods := RBProgramNodeVisitor methods select: [:m| (m selector first: 5) = #visit and: [((m selector at: 6) = $: ) not] ].
	visits:= nil.
	register := OrderedCollection new.
	methods do: [ :m |
		| visitMethodName nodeKind methodSource |
		visitMethodName := m selector.
		nodeKind := (visitMethodName last: visitMethodName size - 5) uncapitalized.
		nodeKind := nodeKind first: nodeKind size - 1.
		register add: nodeKind.
		methodSource := visitMethodName asMethodWithBody: [ :aKindOfNode |
			visits at: #aKindOfNode ifPresent: [ :aBlock | aBlock cull: aKindOfNode ].
			^ super visitMethodName: { aKindOfNode }
		] withArguments: { #aKindOfNode -> nodeKind } asDictionary.
		[ RBAnonymousVisitor compile: methodSource asString classified: m protocol ] on: Exception do: [:e| 	self halt. ]
	].
	
	register := register asArray.
	registerCode := 'registerBlock:for:' asMethodWithBody: [ :aBlock :aKindOfNode |
		(#(register) includes: aKindOfNode) ifFalse: [ self error: aKindOfNode , ' does not seem to exist.' ].
		visits at: #aKindOfNode put: aBlock.
		].
	[ RBAnonymousVisitor compile: registerCode asString classified: #configuring ] on: Exception do: [:e| 	self halt. ].