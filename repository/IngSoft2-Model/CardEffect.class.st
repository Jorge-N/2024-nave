Class {
	#name : #CardEffect,
	#superclass : #Object,
	#instVars : [
		'createdBy'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'helper methods' }
CardEffect >> can: aShip protect: anotherShip [

	^ false
]

{ #category : #'card effect' }
CardEffect >> diceModifierTo: aShipName [

	^ 0
]

{ #category : #'helper methods' }
CardEffect >> is: actualShip alliedWith: collidingShip [

	^ false
]

{ #category : #'helper methods' }
CardEffect >> is: aShip mercenaryOf: anotherShip [

	^ false
]

{ #category : #'helper methods' }
CardEffect >> is: aShip protectorOf: anotherShip [

	^ false
]

{ #category : #testing }
CardEffect >> isAReversedEffectOf: aCell [

	^ false
]

{ #category : #'helper methods' }
CardEffect >> mercenaryCollideWith: possibleMercenaryName [

	^ false
]

{ #category : #removing }
CardEffect >> removeEffect [

	self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
CardEffect >> revertEffect [

	self subclassResponsibility
]

{ #category : #'helper methods' }
CardEffect >> wasCreatedBy: aCard [

	^ aCard = createdBy
]
