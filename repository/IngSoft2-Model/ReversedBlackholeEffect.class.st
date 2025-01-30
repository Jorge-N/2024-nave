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

	Error signal: 'this cell is already reversed!'
]
