Class {
	#name : #HyperJumpCell,
	#superclass : #Cell,
	#instVars : [
		'currentEffect',
		'lengths'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
HyperJumpCell class >> withLengths: aCollectionOfLenghts [

	^ self new initializeWith: aCollectionOfLenghts
]

{ #category : #'cell effect' }
HyperJumpCell >> applyEffectTo: aShip in: aBoard [

	currentEffect applyEffectTo: aShip in: aBoard
]

{ #category : #'as yet unclassified' }
HyperJumpCell >> backToNormalEffect [

	currentEffect := NormalHyperJumpEffect withLengths: lengths
]

{ #category : #initialization }
HyperJumpCell >> initializeWith: someLengths [

	lengths := someLengths.
	currentEffect := NormalHyperJumpEffect withLengths: someLengths
]

{ #category : #'as yet unclassified' }
HyperJumpCell >> reverseEffect [

	currentEffect := currentEffect reverse
]
