Class {
	#name : #CellStateNormal,
	#superclass : #CellState,
	#category : #'IngSoft2-Model'
}

{ #category : #'cell effect' }
CellStateNormal >> applyEffectOf: aCell to: aShip in: aBoard [

	aCell applyNormalEffectTo: aShip in: aBoard
]
