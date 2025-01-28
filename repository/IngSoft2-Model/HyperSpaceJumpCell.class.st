Class {
	#name : #HyperSpaceJumpCell,
	#superclass : #Cell,
	#instVars : [
		'currentEffect'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'cell effect' }
HyperSpaceJumpCell >> applyEffectTo: aShip in: aBoard [

	currentEffect applyEffectTo: aShip in: aBoard
]

{ #category : #initialization }
HyperSpaceJumpCell >> initialize [

	ships := OrderedCollection new.
	currentEffect := NormalHyperSpaceJumpEffect new
]

{ #category : #'as yet unclassified' }
HyperSpaceJumpCell >> reverseEffect [

	currentEffect := currentEffect reverse
]
