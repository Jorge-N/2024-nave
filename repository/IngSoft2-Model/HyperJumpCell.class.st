Class {
	#name : #HyperJumpCell,
	#superclass : #Cell,
	#instVars : [
		'currentEffect'
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

{ #category : #initialization }
HyperJumpCell >> initializeWith: someLengths [

	currentEffect := NormalHyperJumpEffect withLengths: someLengths
]

{ #category : #'as yet unclassified' }
HyperJumpCell >> reverseEffect [

	currentEffect := currentEffect reverse
]
