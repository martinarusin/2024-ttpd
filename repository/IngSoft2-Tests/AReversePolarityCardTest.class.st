Class {
	#name : 'AReversePolarityCardTest',
	#superclass : 'TestCase',
	#category : 'IngSoft2-Tests',
	#package : 'IngSoft2-Tests'
}

{ #category : 'tests' }
AReversePolarityCardTest >> test_01_WhenAReversePolarityCardIsCreatedThenIsAPermanentCard [
| aCard |
aCard:= ReversePolarityCard new.
self assert: aCard isPermanent.
]
