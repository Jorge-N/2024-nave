Class {
	#name : #CardGivingCell,
	#superclass : #Cell,
	#instVars : [
		'deck',
		'currentEffect'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
CardGivingCell class >> deck: aDeck [

	^ super new initializeWith: aDeck
]

{ #category : #'instance creation' }
CardGivingCell class >> new [

	^ self deck: Deck new
]

{ #category : #'cell effect' }
CardGivingCell >> applyEffectTo: aShip in: aBoard [

	currentEffect applyEffectTo: aShip in: aBoard
]

{ #category : #initialization }
CardGivingCell >> initializeWith: aDeck [

	ships := OrderedCollection new.
	deck := aDeck.
	currentEffect := NormalCardGivingEffect deck: aDeck.
	reversed := false.
	^ self
]

{ #category : #'cell effect' }
CardGivingCell >> reverseEffect [

	currentEffect := currentEffect reverse.
	reversed := reversed
		            ifTrue: [ false ]
		            ifFalse: [ true ]
]
