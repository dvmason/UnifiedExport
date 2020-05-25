tests
testUnifyParentRelationshipsOfVariable

| wild1 int1 |
wild1 := UEVariable new.
int1 := UESimpleType integer.

wild1 union: int1.
self assert: int1 parent equals: nil.
self assert: wild1 parent parent equals: nil.



