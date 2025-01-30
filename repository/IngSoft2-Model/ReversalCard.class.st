Class {
	#name : #ReversalCard,
	#superclass : #Card,
	#category : #'IngSoft2-Model'
}

{ #category : #'card effect' }
ReversalCard >> useWith: aCardManager target: aCell [

	| aCellEffectReverser |
	aCardManager verifyIsCardPlayerTurn.
	aCellEffectReverser := CellEffectReverser to: aCell createdBy: self.
	aCardManager addCardEffect: aCellEffectReverser.
	aCellEffectReverser reverseEffect
]
