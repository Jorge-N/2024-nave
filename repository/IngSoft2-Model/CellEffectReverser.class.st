Class {
	#name : #CellEffectReverser,
	#superclass : #CardEffect,
	#instVars : [
		'cell'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #accessing }
CellEffectReverser class >> to: aCell [

	^ self new initializeWith: aCell
]

{ #category : #initialization }
CellEffectReverser >> initializeWith: aCell [

	createdBy := aCell.
]

{ #category : #'as yet unclassified' }
CellEffectReverser >> reverseEffectOf: aCell [

	aCell reverseEffect
]
