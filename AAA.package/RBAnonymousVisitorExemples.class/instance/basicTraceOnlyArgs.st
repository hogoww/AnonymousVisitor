as yet unclassified
basicTraceOnlyArgs
	| v |
	<script>
	v := RBAnonymousVisitor new
		register: [ :aNode | aNode crTrace ] for: #argumentNode;
		yourself.
	
	(RBAnonymousVisitor >> #register:for:) ast acceptVisitor: v .
