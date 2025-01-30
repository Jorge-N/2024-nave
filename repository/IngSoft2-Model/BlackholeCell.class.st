Class {
	#name : #BlackholeCell,
	#superclass : #Cell,
	#instVars : [
		'currentEffect'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #initialization }
BlackholeCell >> applyEffectTo: aShip in: aBoard [

	currentEffect applyEffectTo: aShip in: aBoard
]

{ #category : #initialization }
BlackholeCell >> initialize [

	ships := OrderedCollection new.
	currentEffect := NormalBlackholeEffect new.
	reversed := false
]

{ #category : #'as yet unclassified' }
BlackholeCell >> reverseEffect [

	currentEffect := currentEffect reverse.
	reversed := reversed
		            ifTrue: [ false ]
		            ifFalse: [ true ]
]
