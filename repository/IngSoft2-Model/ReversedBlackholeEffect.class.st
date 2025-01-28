Class {
	#name : #ReversedBlackholeEffect,
	#superclass : #CellEffect,
	#category : #'IngSoft2-Model'
}

{ #category : #'cell effect' }
ReversedBlackholeEffect >> applyEffectTo: aShip in: aBoard [

	aBoard move: aShip by: 4
]

{ #category : #'cell effect' }
ReversedBlackholeEffect >> reverse [

	^ NormalBlackholeEffect new
]
