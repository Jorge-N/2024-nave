Class {
	#name : #MoonwalkCell,
	#superclass : #Cell,
	#instVars : [
		'currentEffect',
		'times'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
MoonwalkCell class >> times: aNumberOfTimes [

	^ self new initializeWith: aNumberOfTimes
]

{ #category : #'cell effect' }
MoonwalkCell >> applyEffectTo: aShip in: aBoard [

	currentEffect applyEffectTo: aShip in: aBoard
]

{ #category : #'as yet unclassified' }
MoonwalkCell >> backToNormalEffect [

	currentEffect := NormalMoonwalkEffect times: times
]

{ #category : #initialization }
MoonwalkCell >> initializeWith: aNumberOfTimes [

	times := aNumberOfTimes.
	currentEffect := NormalMoonwalkEffect times: aNumberOfTimes
]

{ #category : #'as yet unclassified' }
MoonwalkCell >> reverseEffect [

	currentEffect := currentEffect reverse
]
