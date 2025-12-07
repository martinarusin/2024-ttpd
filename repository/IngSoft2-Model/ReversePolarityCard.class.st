Class {
	#name : 'ReversePolarityCard',
	#superclass : 'PermanentCard',
	#category : 'IngSoft2-Model',
	#package : 'IngSoft2-Model'
}

{ #category : 'as yet unclassified' }
ReversePolarityCard >> affectTo: aShip from: aShip2 playing: aBoardGame [ 
	| newCard |
	newCard:= ReversePolarityCard new.
	aShip addActiveCards: newCard.
	^newCard
	
	
]
