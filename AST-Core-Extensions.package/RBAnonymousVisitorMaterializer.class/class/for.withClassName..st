as yet unclassified
for: anAnonymousVisitor withClassName: aClassName
	^ self new
		visitor: anAnonymousVisitor;
		newClassName: aClassName;
		materialize
		