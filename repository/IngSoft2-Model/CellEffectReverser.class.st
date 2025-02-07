Class {
	#name : #CellEffectReverser,
	#superclass : #CardEffect,
	#instVars : [
		'cell'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #accessing }
CellEffectReverser class >> to: aCell createdBy: aCard [

	^ self new initializeWith: aCard onCell: aCell
]

{ #category : #'cell effect' }
CellEffectReverser >> applyEffectTo: aShip in: aBoard [

	cell applyEffectTo: aShip in: aBoard
]

{ #category : #initialization }
CellEffectReverser >> initializeWith: aCard onCell: aCell [

	createdBy := aCard.
	cell := aCell reverseEffect
]

{ #category : #testing }
CellEffectReverser >> isAReversedEffectOf: aCell [

	^ cell = aCell 
]

{ #category : #removing }
CellEffectReverser >> removeEffect [

]

{ #category : #'cell effect' }
CellEffectReverser >> reverseEffect [

	cell reverseEffect
]

{ #category : #'as yet unclassified' }
CellEffectReverser >> revertEffect [

	cell backToNormalEffect
]
