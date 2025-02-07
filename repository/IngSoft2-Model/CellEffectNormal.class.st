Class {
	#name : #CellEffectNormal,
	#superclass : #CardEffect,
	#instVars : [
		'cell'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
CellEffectNormal class >> of: aCell [

	^ self new initializeWith: aCell
]

{ #category : #'cell effect' }
CellEffectNormal >> applyEffectTo: aShip in: aBoard [

	cell applyEffectTo: aShip in: aBoard  
]

{ #category : #initialization }
CellEffectNormal >> initializeWith: aCell [

	cell := aCell backToNormalEffect 
]
