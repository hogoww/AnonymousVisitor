as yet unclassified
createNewClass
	newClass := RBProgramNodeVisitor << newClassName
		slots: (instanceVariables collect: #name) asArray;
		package: self class package name;
		install.