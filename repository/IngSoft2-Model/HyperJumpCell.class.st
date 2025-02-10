Class {
	#name : #HyperJumpCell,
	#superclass : #Cell,
	#instVars : [
		'lengths'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
HyperJumpCell class >> withLengths: aCollectionOfLenghts [

	^ self new initializeWith: aCollectionOfLenghts
]

{ #category : #'cell effect' }
HyperJumpCell >> applyNormalEffectTo: aShip in: aBoard [

	| anAmountToMove |
	anAmountToMove := lengths first.
	lengths removeFirst.
	lengths addLast: anAmountToMove.
	aBoard move: aShip by: anAmountToMove
]

{ #category : #'cell effect' }
HyperJumpCell >> applyReversedEffectTo: aShip in: aBoard [

	| anAmountToMove |
	anAmountToMove := lengths first.
	lengths removeFirst.
	lengths addLast: anAmountToMove.
	aBoard move: aShip by: anAmountToMove negated
]

{ #category : #initialization }
HyperJumpCell >> initializeWith: someLengths [

	lengths := someLengths
]
