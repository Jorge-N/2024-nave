Class {
	#name : #HyperSpaceJumpCell,
	#superclass : #Cell,
	#category : #'IngSoft2-Model'
}

{ #category : #'cell effect' }
HyperSpaceJumpCell >> applyNormalEffectTo: aShip in: aBoard [

	aShip removeShield.
	aBoard move: aShip by: 4
]

{ #category : #'cell effect' }
HyperSpaceJumpCell >> applyReversedEffectTo: aShip in: aBoard [

	aShip addShield.
	aBoard move: aShip by: -4
]

{ #category : #initialization }
HyperSpaceJumpCell >> initialize [

	ships := OrderedCollection new
]
