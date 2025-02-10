Class {
	#name : #ProtectorCard,
	#superclass : #Card,
	#category : #'IngSoft2-Model'
}

{ #category : #'card effect' }
ProtectorCard >> useWith: aCardManager target: aTargetShipName [

	aCardManager verifyIsCardPlayerTurn.
	aCardManager
		assignProtectorShipToCardPlayer: aTargetShipName
		by: self
]
