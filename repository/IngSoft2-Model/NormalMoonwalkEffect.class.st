Class {
	#name : #NormalMoonwalkEffect,
	#superclass : #CellEffect,
	#instVars : [
		'times'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
NormalMoonwalkEffect class >> times: aNumberOfTimes [

	^ self new initializeWith: aNumberOfTimes
]

{ #category : #'cell effect' }
NormalMoonwalkEffect >> applyEffectTo: aShip in: aBoard [

	aBoard moveAllShips: times negated except: aShip
]

{ #category : #initialization }
NormalMoonwalkEffect >> initializeWith: aNumberOfTimes [

	times := aNumberOfTimes
]

{ #category : #highlighting }
NormalMoonwalkEffect >> reverse [

	^ ReversedMoonwalkEffect times: times
]
