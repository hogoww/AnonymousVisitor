as yet unclassified
whatInstanceVariablesToDefine
	^ instanceVariables := Set withAll: (visitor visits flatCollect:[ :aBlock| | aBlockAST | 
		aBlockAST := aBlock compiledBlock ast. 
			(aBlockAST allVariables reject: [ :aVariable | 
				(aBlockAST whoDefines: aVariable name) = aBlockAST ])
		]).