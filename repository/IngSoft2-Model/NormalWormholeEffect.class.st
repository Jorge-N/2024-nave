Class {
	#name : #NormalWormholeEffect,
	#superclass : #CellEffect,
	#instVars : [
		'wormholeEnd',
		'wormholeStart'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'as yet unclassified' }
NormalWormholeEffect class >> withStart: aWormholeCell withEnd: anotherWormholeCell [

	^ self new initializeWithStart: aWormholeCell andEnd: anotherWormholeCell
]

{ #category : #'cell effect' }
NormalWormholeEffect >> applyEffectTo: aShip in: aBoard [

	| aCell |
	aCell := aBoard whereIs: aShip.
	aCell leaves: aShip.
	wormholeEnd enters: aShip
]

{ #category : #initialization }
NormalWormholeEffect >> initializeWithStart: aWormholeCell andEnd: anotherWormholeCell [

	wormholeStart := aWormholeCell.
	wormholeEnd := anotherWormholeCell
]

{ #category : #'cell effect' }
NormalWormholeEffect >> reverse [

	^ ReversedWormholeEffect withStart: wormholeStart withEnd: wormholeEnd
]
