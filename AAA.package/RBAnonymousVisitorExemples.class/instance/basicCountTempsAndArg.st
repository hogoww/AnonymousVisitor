as yet unclassified
basicCountTempsAndArg
	| v temporaryCounter argumentCounter |
	temporaryCounter := 0.
	argumentCounter := 0.
	v := RBAnonymousVisitor new
		register: [ :aNode | temporaryCounter := temporaryCounter + 1 ] for: #argumentNode;
		register: [ :aNode | argumentCounter := argumentCounter + 1 ] for: #temporaryNode;
		yourself.
	
	(RBAnonymousVisitor >> #register:for:) ast acceptVisitor: v