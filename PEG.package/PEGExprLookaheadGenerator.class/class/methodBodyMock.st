as yet unclassified
methodBodyMock
	^ '| childResult |
	childResult := self parse_{1}: string atPos: pos.
	^ childResult
		ifNil: [nil]
		ifNotNil: [
			PEGAbstractSyntaxTreeNode new
				rule: self;
				startPos: pos;
				endPos: pos;
				children: (Array with: childResult);
				yourself]'