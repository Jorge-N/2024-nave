Class {
	#name : #WormholeCell,
	#superclass : #Cell,
	#instVars : [
		'wormholeEnd',
		'currentEffect'
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
	firstWormhole initializeWith: secondWormhole.
	secondWormhole initializeWith: firstWormhole.

	someCells at: wormholeStartLocation put: (firstWormhole).
	someCells at: wormholeEndLocation put: (secondWormhole)
]

{ #category : #'cell effect' }
WormholeCell >> applyEffectTo: aShip in: aBoard [

	currentEffect applyEffectTo: aShip in: aBoard
]

{ #category : #initialization }
WormholeCell >> initializeWith: aWormholeCell [

	currentEffect := NormalWormholeEffect withStart: self withEnd: aWormholeCell .
	wormholeEnd := aWormholeCell
]

{ #category : #'cell effect' }
WormholeCell >> reverseEffect [

	currentEffect := currentEffect reverse
]
