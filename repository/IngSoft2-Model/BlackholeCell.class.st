Class {
	#name : #BlackholeCell,
	#superclass : #Cell,
	#category : #'IngSoft2-Model'
}

{ #category : #initialization }
BlackholeCell >> applyNormalEffectTo: aShip in: aBoard [

	aBoard move: aShip by: -4
]

{ #category : #initialization }
BlackholeCell >> applyReversedEffectTo: aShip in: aBoard [

	aBoard move: aShip by: 4
]

{ #category : #initialization }
BlackholeCell >> initialize [

	ships := OrderedCollection new
]
