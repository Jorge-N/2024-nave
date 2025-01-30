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

{ #category : #initialization }
CellEffectReverser >> initializeWith: aCard onCell: aCell [

	createdBy := aCard.
	cell := aCell
]
