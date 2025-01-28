Class {
	#name : #NormalHyperSpaceJumpEffect,
	#superclass : #CellEffect,
	#category : #'IngSoft2-Model'
}

{ #category : #'cell effect' }
NormalHyperSpaceJumpEffect >> applyEffectTo: aShip in: aBoard [

	aShip removeShield.
	aBoard move: aShip by: 4
]

{ #category : #'cell effect' }
NormalHyperSpaceJumpEffect >> reverse [

	^ ReversedHyperSpaceJumpEffect new
]
