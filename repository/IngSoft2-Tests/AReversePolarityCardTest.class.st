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

{ #category : 'tests' }
AReversePolarityCardTest >> test_02_WhenAReversePolarityCardIsAplyThenAShipGetThisCardActive [

| aCard aShip anotherShip aCollectionOfShips aCollectionOfDice aDie boxesArray aBoard aLoadedDie anotherLoadedDie aBoardGame |

	aCard:= ReversePolarityCard new.
	boxesArray := OrderedCollection new.
	boxesArray add: (NoEffectBox  inPlace: 1).
	boxesArray add: (NoEffectBox inPlace: 2).
	boxesArray add: (NoEffectBox inPlace: 3).
	boxesArray add: (NoEffectBox inPlace: 4).
	aBoard := Board withBoxesArray: boxesArray.
	aCollectionOfDice := OrderedCollection new.
	aLoadedDie := LoadedDie of: 50.
	anotherLoadedDie := LoadedDie of: 40.
	aCollectionOfDice add: aLoadedDie.
	aCollectionOfDice add: anotherLoadedDie.
	aBoardGame := BoardGame
		              withShip: 3
		              withBoard: aBoard
		              WithDice: aCollectionOfDice
		              andwithNumberOfLaps: 2.
	aShip := aBoardGame getShipsPlaying at: 1.
	anotherShip := aBoardGame getShipsPlaying at: 2.
	aCard affectTo: aShip from: anotherShip playing: aBoardGame.

	
self assert:((aShip getActiveCards at:1) isKindOf: ReversePolarityCard ).

]
