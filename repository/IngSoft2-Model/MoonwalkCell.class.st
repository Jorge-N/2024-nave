Class {
	#name : #MoonwalkCell,
	#superclass : #Cell,
	#instVars : [
		'times'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
MoonwalkCell class >> times: aNumberOfTimes [

	^ self new initializeWith: aNumberOfTimes
]

{ #category : #'cell effect' }
MoonwalkCell >> applyNormalEffectTo: aShip in: aBoard [

	aBoard moveAllShips: times negated except: aShip
]

{ #category : #'cell effect' }
MoonwalkCell >> applyReversedEffectTo: aShip in: aBoard [

		aBoard moveAllShips: times except: aShip
]

{ #category : #initialization }
MoonwalkCell >> initializeWith: aNumberOfTimes [

	times := aNumberOfTimes
]
