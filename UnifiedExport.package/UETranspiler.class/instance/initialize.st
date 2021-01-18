initialization
initialize
	typeChecker := self class typeCheckerClass new.
	astConverter := self class astConverterClass new typeChecker: typeChecker; transpiler: self.
	classes := IdentityDictionary new.
	methods := IdentityDictionary new.
	selectorsForPerform := Set with: #initialize.
	methodsToTranspile := IdentitySet new.

