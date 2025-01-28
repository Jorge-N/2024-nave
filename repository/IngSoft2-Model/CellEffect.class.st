Class {
	#name : #CellEffect,
	#superclass : #Object,
	#category : #'IngSoft2-Model'
}

{ #category : #'cell effect' }
CellEffect >> applyEffectTo: aShip in: aBoard [

	self subclassResponsibility
]

{ #category : #'cell effect' }
CellEffect >> reverse [

	self subclassResponsibility
]
