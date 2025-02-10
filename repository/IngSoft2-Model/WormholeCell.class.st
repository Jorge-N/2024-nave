Class {
	#name : #WormholeCell,
	#superclass : #Cell,
	#instVars : [
		'wormholeEnd',
		'wormholeEndIndex',
		'wormholeStartIndex'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
WormholeCell class >> new [
	^ self error: 'Use WormholeCell newPairIn: start: end: instead.'
]

{ #category : #'instance creation' }
WormholeCell class >> newPairIn: someCells start: wormholeStartLocation end: wormholeEndLocation [

	| firstWormhole secondWormhole |
	firstWormhole := super new.
	secondWormhole := super new.
	firstWormhole
		initializeWith: secondWormhole
		starting: wormholeStartLocation
		ending: wormholeEndLocation.
	secondWormhole
		initializeWith: firstWormhole
		starting: wormholeStartLocation
		ending: wormholeEndLocation.

	someCells at: wormholeStartLocation put: firstWormhole.
	someCells at: wormholeEndLocation put: secondWormhole
]

{ #category : #'cell effect' }
WormholeCell >> applyNormalEffectTo: aShip in: aBoard [

	| aCell wormholeEndCell |
	wormholeEndCell := aBoard cellWithIndex: wormholeEndIndex.
	aCell := aBoard whereIs: aShip.
	aCell leaves: aShip.
	wormholeEndCell enters: aShip
]

{ #category : #'cell effect' }
WormholeCell >> applyReversedEffectTo: aShip in: aBoard [

	| actualCellIndex actualCell |
	actualCell := aBoard whereIs: aShip.
	actualCellIndex := aBoard indexOfCellWith: aShip.

	actualCellIndex = wormholeStartIndex
		ifTrue: [
			aBoard
				move: aShip
				throughReversedWormholeStartFrom: wormholeStartIndex
				to: wormholeEndIndex ]
		ifFalse: [
			aBoard
				move: aShip
				throughReversedWormholeEndFrom: wormholeEndIndex
				to: wormholeStartIndex ]
]

{ #category : #initialization }
WormholeCell >> initializeWith: aWormholeCell starting: wormholeStartLocation ending: wormholeEndLocation [

	wormholeStartIndex := wormholeStartLocation.
	wormholeEndIndex := wormholeEndLocation.
	wormholeEnd := aWormholeCell
]
