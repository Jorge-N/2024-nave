Class {
	#name : #ReversedMoonwalkEffect,
	#superclass : #CellEffect,
	#instVars : [
		'times'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
ReversedMoonwalkEffect class >> times: aNumberOfTimes [

	^ self new initializeWith: aNumberOfTimes
]

{ #category : #'cell effect' }
ReversedMoonwalkEffect >> applyEffectTo: aShip in: aBoard [

	aBoard moveAllShips: times except: aShip
]

{ #category : #initialization }
ReversedMoonwalkEffect >> initializeWith: aNumberOfTimes [

	times := aNumberOfTimes
]

{ #category : #highlighting }
ReversedMoonwalkEffect >> reverse [

	^ NormalMoonwalkEffect times: times
]
