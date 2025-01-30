Class {
	#name : #MoonwalkCell,
	#superclass : #Cell,
	#instVars : [
		'currentEffect'
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

{ #category : #initialization }
MoonwalkCell >> initializeWith: aNumberOfTimes [

	reversed := false.
	currentEffect := NormalMoonwalkEffect times: aNumberOfTimes
]

{ #category : #'as yet unclassified' }
MoonwalkCell >> reverseEffect [

	currentEffect := currentEffect reverse.
	reversed := reversed
		            ifTrue: [ false ]
		            ifFalse: [ true ]
]
