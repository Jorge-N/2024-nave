Class {
	#name : #ReversedHyperSpaceJumpEffect,
	#superclass : #CellEffect,
	#category : #'IngSoft2-Model'
}

{ #category : #'cell effect' }
ReversedHyperSpaceJumpEffect >> applyEffectTo: aShip in: aBoard [

	aShip addShield.
	aBoard move: aShip by: -4
]

{ #category : #'cell effect' }
ReversedHyperSpaceJumpEffect >> reverse [

	^ NormalHyperSpaceJumpEffect new
]
