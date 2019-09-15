as yet unclassified
generate: aGrammarName inheritFrom: superclass
	| parserClass |
	parserClass := superclass subclass: ('PEGParser' , aGrammarName) asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'PEG-ParserGenerator-Parsers'.

	rules keysAndValuesDo: [:ruleName :exprGenerator |
		exprGenerator compile: ('parse_' , ruleName) into: parserClass.
		(PEGExprApplyGenerator newWithRule: ruleName) compile: ('apply_' , ruleName) into: parserClass].

	^ parserClass