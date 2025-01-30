Class {
	#name : #WormholeCell,
	#superclass : #Cell,
	#instVars : [
		'wormholeEnd',
		'currentEffect',
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
WormholeCell >> applyEffectTo: aShip in: aBoard [

	currentEffect applyEffectTo: aShip in: aBoard
]

{ #category : #'as yet unclassified' }
WormholeCell >> backToNormalEffect [

	currentEffect := NormalWormholeEffect
		                 withStart: wormholeStartIndex
		                 withEnd: wormholeEndIndex
]

{ #category : #initialization }
WormholeCell >> initializeWith: aWormholeCell starting: wormholeStartLocation ending: wormholeEndLocation [

	currentEffect := NormalWormholeEffect
		                 withStart: wormholeStartLocation
		                 withEnd: wormholeEndLocation.
	wormholeStartIndex := wormholeStartLocation.
	wormholeEndIndex := wormholeEndLocation.
	wormholeEnd := aWormholeCell
]

{ #category : #'cell effect' }
WormholeCell >> reverseEffect [

	currentEffect := currentEffect reverse
]
