Class {
	#name : #ReversedHyperJumpEffect,
	#superclass : #CellEffect,
	#instVars : [
		'lengths'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
ReversedHyperJumpEffect class >> withLengths: aCollectionOfLengths [

	^ self new initializeWith: aCollectionOfLengths
]

{ #category : #'cell effect' }
ReversedHyperJumpEffect >> applyEffectTo: aShip in: aBoard [

	| anAmountToMove |
	anAmountToMove := lengths first.
	lengths removeFirst.
	lengths addLast: anAmountToMove.
	aBoard move: aShip by: anAmountToMove negated
]

{ #category : #initialization }
ReversedHyperJumpEffect >> initializeWith: aCollectionOfLengths [

	lengths := aCollectionOfLengths
]

{ #category : #'cell effect' }
ReversedHyperJumpEffect >> reverse [

	^ NormalHyperJumpEffect withLengths: lengths
]
