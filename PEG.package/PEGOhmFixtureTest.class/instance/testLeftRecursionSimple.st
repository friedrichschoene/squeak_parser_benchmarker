as yet unclassified
testLeftRecursionSimple
	| fixture |
	
	fixture :=
		'{ "grammar" : "M { number = numberRec | digit 
                                      numberRec = number digit }", 
		"matchContents" : [    { "input" : "", "expect" : false },
							   { "input" : "a", "expect" : false },
							   { "input" : "1", "expect" : true },
							   { "input" : "123", "expect" : true },
							   { "input" : "7276218173", "expect" : true } ] }'.
	
	self assertFixture: fixture