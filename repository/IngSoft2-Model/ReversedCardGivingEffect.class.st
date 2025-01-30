Class {
	#name : #ReversedCardGivingEffect,
	#superclass : #CellEffect,
	#instVars : [
		'deck'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
ReversedCardGivingEffect class >> deck: aDeck [

	^ self new initializeWith: aDeck
]

{ #category : #'cell effect' }
ReversedCardGivingEffect >> applyEffectTo: aShip in: aBoard [

	aShip removeFromDeck: aShip cards atRandom
]

{ #category : #initialization }
ReversedCardGivingEffect >> initializeWith: aDeck [

	deck := aDeck
]

{ #category : #'cell effect' }
ReversedCardGivingEffect >> reverse [

	Error signal: 'this cell is already reversed!'
]
