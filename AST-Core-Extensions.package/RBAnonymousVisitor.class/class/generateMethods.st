as yet unclassified
generateMethods
	<script>
	| methods register visits registerCode blocks source |
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
		[ RBAnonymousVisitor compile: methodSource asString classified: m protocol ] on: Exception do: [:e| self halt. ]
	].
	
	register := register asArray.
	registerCode := 'registerBlock:for:' asMethodWithBody: [ :aBlock :aKindOfNode |
		(#(register) includes: aKindOfNode) ifFalse: [ self error: aKindOfNode , ' does not seem to exist.' ].
		visits at: aKindOfNode put: aBlock.
		].
	[ RBAnonymousVisitor compile: registerCode asString classified: #configuring ] on: Exception do: [:e| self halt. ].

	blocks := [ ] asPlainCodeBC.
	methods do: [ :aMethod | | selector nodeKind |
		selector := aMethod selector value.
		nodeKind := (selector last: selector size - 5) uncapitalized.
		nodeKind := nodeKind first: nodeKind size - 1.
		blocks add: [ :aNodeKind | aNodeKind = #nodeKind ifTrue: [ ^ #selector ] ].
		].
	blocks add: [ self error: 'No node selector exists for this kind of node.' ].
	
	source := 'selectorFor:' asMethodWithBody: blocks.
	[ RBAnonymousVisitor compile: source asString classified: #configuring ] on: Exception do: [:e| self halt. ].

	registerCode := 'materializeAs:' asMethodWithBody: [ :aClassName |
		^ self class materialize: self as: aClassName.
		].
	[ RBAnonymousVisitor compile: registerCode asString classified: #configuring ] on: Exception do: [:e| self halt. ].