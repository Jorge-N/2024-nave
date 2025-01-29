Class {
	#name : #ReversedWormholeEffect,
	#superclass : #CellEffect,
	#instVars : [
		'wormholeEnd',
		'wormholeStart'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'as yet unclassified' }
ReversedWormholeEffect class >> withStart: aWormholeCell withEnd: anotherWormholeCell [

	^ self new initializeWithStart: aWormholeCell andEnd: anotherWormholeCell
]

{ #category : #'cell effect' }
ReversedWormholeEffect >> applyEffectTo: aShip in: aBoard [

	| actualCellIndex actualCell |
	actualCell := aBoard whereIs: aShip.
	actualCellIndex := aBoard indexOfCellWith: aShip.

	actualCellIndex = wormholeStart
		ifTrue: [
			aBoard
				move: aShip
				throughReversedWormholeStartFrom: wormholeStart
				to: wormholeEnd ]
		ifFalse: [
			aBoard
				move: aShip
				throughReversedWormholeEndFrom: wormholeEnd
				to: wormholeStart ]
]

{ #category : #initialization }
ReversedWormholeEffect >> initializeWithStart: wormholeStartLocation andEnd: wormholeEndLocation [

	wormholeStart := wormholeStartLocation.
	wormholeEnd := wormholeEndLocation
]

{ #category : #'cell effect' }
ReversedWormholeEffect >> reverse [

	^ NormalWormholeEffect withStart: wormholeStart withEnd: wormholeEnd
]
