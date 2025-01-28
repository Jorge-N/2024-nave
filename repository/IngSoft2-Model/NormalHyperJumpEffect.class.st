Class {
	#name : #NormalHyperJumpEffect,
	#superclass : #CellEffect,
	#instVars : [
		'lengths'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
NormalHyperJumpEffect class >> withLengths: aCollectionOfLenghts [

	^ self new initializeWith: aCollectionOfLenghts
]

{ #category : #'cell effect' }
NormalHyperJumpEffect >> applyEffectTo: aShip in: aBoard [

	| anAmountToMove |
	anAmountToMove := lengths first.
	lengths removeFirst.
	lengths addLast: anAmountToMove.
	aBoard move: aShip by: anAmountToMove
]

{ #category : #initialization }
NormalHyperJumpEffect >> initializeWith: aCollectionOfLengths [

	lengths := aCollectionOfLengths
]

{ #category : #'cell effect' }
NormalHyperJumpEffect >> reverse [

	^ ReversedHyperJumpEffect withLengths: lengths
]
