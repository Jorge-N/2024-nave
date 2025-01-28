Class {
	#name : #NormalBlackholeEffect,
	#superclass : #CellEffect,
	#category : #'IngSoft2-Model'
}

{ #category : #'cell effect' }
NormalBlackholeEffect >> applyEffectTo: aShip in: aBoard [

	aBoard move: aShip by: -4
]

{ #category : #'cell effect' }
NormalBlackholeEffect >> reverse [

	^ ReversedBlackholeEffect new
]
