as yet unclassified
doEval: string at: pos
	matchString withIndexDo: [:character :index |
		(character == (string at: (pos + index - 1) ifAbsent: [nil])) ifFalse: [^ {nil . PEGParsingError new: pos with: self}]].
	^ {
		PEGAbstractSyntaxTreeNode new
			rule: self;
			startPos: pos;
			endPos: (pos + matchString size);
			yourself .
		nil}