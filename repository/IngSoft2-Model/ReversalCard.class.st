Class {
	#name : #ReversalCard,
	#superclass : #Card,
	#category : #'IngSoft2-Model'
}

{ #category : #'card effect' }
ReversalCard >> useWith: aCardManager target: aCell [

	aCardManager verifyIsCardPlayerTurn.
	aCell reverseEffect
]
