as yet unclassified
doEval: string at: pos
	| result |
	result := childExpr eval: string at: pos.
	result > 0 ifTrue: [^ pos].
	^ -1