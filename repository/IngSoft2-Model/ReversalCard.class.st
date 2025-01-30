Class {
	#name : #ReversalCard,
	#superclass : #Card,
	#category : #'IngSoft2-Model'
}

{ #category : #'card effect' }
ReversalCard >> useWith: aCardManager target: aCell [

	aCell isReversed
		ifTrue: [ Error signal: 'this cell is already reversed!' ]
		ifFalse: [
			aCardManager verifyIsCardPlayerTurn.
			aCardManager addCardEffect:
				(CellEffectReverser to: aCell createdBy: self).
			aCell reverseEffect ]
]
