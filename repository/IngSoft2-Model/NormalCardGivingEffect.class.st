Class {
	#name : #NormalCardGivingEffect,
	#superclass : #CellEffect,
	#instVars : [
		'deck'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
NormalCardGivingEffect class >> deck: aDeck [

	^ self new initializeWith: aDeck
]

{ #category : #'cell effect' }
NormalCardGivingEffect >> applyEffectTo: aShip in: aBoard [

	aShip receive: deck drawCard
]

{ #category : #initialization }
NormalCardGivingEffect >> initializeWith: aDeck [

	deck := aDeck
]

{ #category : #'cell effect' }
NormalCardGivingEffect >> reverse [

	^ ReversedCardGivingEffect deck: deck
]
