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

	| actualCell |
	actualCell := aBoard whereIs: aShip.
	aBoard
		move: aShip
		throughReversedWormholeStarting: actualCell
		ending: wormholeEnd
]

{ #category : #initialization }
ReversedWormholeEffect >> initializeWithStart: aWormholeCell andEnd: anotherWormholeCell [

	wormholeStart := aWormholeCell.
	wormholeEnd := anotherWormholeCell
]

{ #category : #'cell effect' }
ReversedWormholeEffect >> reverse [

	^ NormalWormholeEffect withStart: wormholeStart withEnd: wormholeEnd
]
