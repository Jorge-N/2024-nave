Class {
	#name : #CellState,
	#superclass : #Object,
	#category : #'IngSoft2-Model'
}

{ #category : #'as yet unclassified' }
CellState >> applyEffectOf: aCell to: aShip in: aBoard [

	self subclassResponsibility
]
