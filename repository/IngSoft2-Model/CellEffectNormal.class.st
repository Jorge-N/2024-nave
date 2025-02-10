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

{ #category : #initialization }
CellEffectNormal >> initializeWith: aCell [

	cell := aCell
]
