Class {
	#name : #CellStateReversed,
	#superclass : #CellState,
	#category : #'IngSoft2-Model'
}

{ #category : #'cell effect' }
CellStateReversed >> applyEffectOf: aCell to: aShip in: aBoard [

	aCell applyReversedEffectTo: aShip in: aBoard
]
