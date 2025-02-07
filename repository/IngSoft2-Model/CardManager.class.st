Class {
	#name : #CardManager,
	#superclass : #Object,
	#instVars : [
		'ships',
		'board',
		'deck',
		'activeCardEffects',
		'actualShipPlayingCard',
		'lastUsedCard'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
CardManager class >> withShips: someShips withBoard: aBoard withDeck: aDeck [

	^ self new initializeWith: someShips withBoard: aBoard withDeck: aDeck
]

{ #category : #adding }
CardManager >> addCardEffect: aCardEffect [

	activeCardEffects add: aCardEffect
]

{ #category : #'card effect' }
CardManager >> applyBattleModifierTo: aShip using: aDice [

	| shipAllies |
	shipAllies := self mercenariesOf: aShip.
	^ (shipAllies collect: [ :ally | aDice throw ]) sumNumbers
]

{ #category : #'cell effect' }
CardManager >> applyEffectTo: aShip [

	| aCell aCellEffect |
	aCell := board whereIs: aShip.
	aCellEffect := activeCardEffects
		               detect: [ :eachEffect |
		               eachEffect isAReversedEffectOf: aCell ]
		               ifNone: [ CellEffectNormal of: aCell ].
	board applyEffectTo: aShip withEffect: aCellEffect
]

{ #category : #'card effect' }
CardManager >> assignMercenaryShipToCardPlayer: aNewMercenaryName by: aCard [

	| newMercenary |
	actualShipPlayingCard name = aNewMercenaryName ifTrue: [
		Error signal: 'you cannot target yourself as a Mercenary!' ].
	newMercenary := ships detect: [ :eachShip |
		                eachShip name = aNewMercenaryName ].
	activeCardEffects add: (MercenaryEffect
			 createdBy: aCard
			 from: actualShipPlayingCard
			 to: newMercenary)
]

{ #category : #'card effect' }
CardManager >> assignProtectorShipToCardPlayer: aNewProtectorName by: aProtectorCard [

	| newProtector |
	actualShipPlayingCard name = aNewProtectorName ifTrue: [
		Error signal: 'you cannot target yourself as a Protector!' ].
	newProtector := ships detect: [ :eachShip |
		                eachShip name = aNewProtectorName ].
	activeCardEffects add: (ProtectorEffect
			 createdBy: aProtectorCard
			 from: actualShipPlayingCard
			 to: newProtector).
]

{ #category : #testing }
CardManager >> can: aShip protect: anotherShip [

	^ activeCardEffects anySatisfy: [ :eachEffect |
		  eachEffect can: aShip protect: anotherShip ]
]

{ #category : #'helper methods' }
CardManager >> checkIf: actualShip shouldBattleWith: collidingShip in: aGame [

	(self is: actualShip alliedWith: collidingShip) ifFalse: [
		aGame handleBattleBetween: actualShip and: collidingShip ]
]

{ #category : #'card effect' }
CardManager >> diceModifierTo: aShip [

	^ (activeCardEffects collect: [ :eachCardEffect |
		   eachCardEffect diceModifierTo: aShip name ]) sumNumbers
]

{ #category : #accessing }
CardManager >> findDamageReceiver: aShip [

	^ ships
		  detect: [ :eachShip | self can: aShip protect: eachShip ]
		  ifNone: aShip
]

{ #category : #initialization }
CardManager >> initializeWith: someShips withBoard: aBoard withDeck: aDeck [

	| activeShipPlayingCard |
	activeShipPlayingCard := nil.
	activeCardEffects := OrderedCollection new.
	deck := aDeck.
	ships := someShips.
	board := aBoard.
	^ self
]

{ #category : #testing }
CardManager >> is: aShip alliedWith: anotherShip [

	^ activeCardEffects anySatisfy: [ :eachEffect |
		  eachEffect is: aShip alliedWith: anotherShip ]
]

{ #category : #testing }
CardManager >> is: aShip mercenaryOf: anotherShip [

	^ activeCardEffects anySatisfy: [ :eachEffect |
		  eachEffect is: aShip mercenaryOf: anotherShip ]
]

{ #category : #testing }
CardManager >> is: aShip protectorOf: anotherShip [

	^ activeCardEffects anySatisfy: [ :eachEffect |
		  eachEffect is: aShip protectorOf: anotherShip ]
]

{ #category : #accessing }
CardManager >> mercenariesOf: aShip [

	^ ships select: [ :eachShip | self is: aShip mercenaryOf: eachShip ]
]

{ #category : #'card control' }
CardManager >> playCard: aCard by: aShip target: aTarget [

	actualShipPlayingCard := aShip.
	aShip verifyHas: aCard.
	aCard useWith: self target: aTarget.
	lastUsedCard := aCard usedCardWith: lastUsedCard.
	aShip removeFromDeck: aCard
]

{ #category : #accessing }
CardManager >> protectorsOf: aShip [

	^ aShip protectors.
]

{ #category : #removing }
CardManager >> removeEffectOf: aCard [

	| effectToRemove |
	effectToRemove := activeCardEffects
		                  detect: [ :eachEffect |
		                  eachEffect wasCreatedBy: aCard ]
		                  ifNone: [
		                  Error signal: 'no such card in active cards!' ].
	activeCardEffects remove: effectToRemove
]

{ #category : #'card control' }
CardManager >> repeatLastCardWithTarget: aTarget [

	| cardToUse |
	cardToUse := lastUsedCard class new.
	actualShipPlayingCard receive: cardToUse.
	self playCard: cardToUse by: actualShipPlayingCard target: aTarget
]

{ #category : #'cell effect' }
CardManager >> repeatLastCellEffectTo: aShipName [

	board applyLastEffectTo: aShipName
]

{ #category : #'helper methods' }
CardManager >> verifyIsCardPlayerTurn [
	
	| currentTurnShip |
	currentTurnShip := ships first.
	currentTurnShip ~= actualShipPlayingCard ifTrue: [ Error signal: 'it is not your turn!' ]
	
]

{ #category : #removing }
CardManager >> verifyMercenaryCollision: aTargetShipName [

	(activeCardEffects anySatisfy: [ :eachEffect |
		 eachEffect mercenaryCollideWith: aTargetShipName ]) ifTrue: [
		Error signal: 'that ship is already a mercenary!' ]
]
