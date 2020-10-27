tests
testOccurs1
	| tVar1 tVar2 tArrow tLink|
	tVar1 := ToyTVar newvar.
	self assert: (tVar1 occurs: tVar1).
	
	tVar2 := ToyTVar newvar.
	self deny: (tVar1 occurs: tVar2).
	
	tArrow := ToyTArrow type: tVar1 arrow: tVar2.
	self assert: (tVar1 occurs: tArrow).
	self assert: (tVar2 occurs: tArrow).
	self assert: (tArrow occurs: tVar1).  "not sure about this one"
	
	tLink := ToyLink link: tVar1.
	self assert: (tVar1 occurs: tLink).
	self deny: (tVar2 occurs: tLink).
	self assert: (tLink occurs: tLink). 
	
	