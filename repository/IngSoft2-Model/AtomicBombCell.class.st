Class {
	#name : #AtomicBombCell,
	#superclass : #Cell,
	#category : #'IngSoft2-Model'
}

{ #category : #'cell effect' }
AtomicBombCell >> applyNormalEffectTo: aShip in: aBoard [

	aBoard removeShieldFromAllShips.
	aBoard moveAllShipsToTheStart
]

{ #category : #'cell effect' }
AtomicBombCell >> applyReversedEffectTo: aShip in: aBoard [

	aBoard removeShieldFromAllShips.
	aBoard moveAllShipsToTheStart
]
