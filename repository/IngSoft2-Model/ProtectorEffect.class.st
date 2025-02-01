Class {
	#name : #ProtectorEffect,
	#superclass : #CardEffect,
	#instVars : [
		'fromShip',
		'toShip'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
ProtectorEffect class >> createdBy: aCard from: fromShip to: toShip [

	^ self new initializeWith: aCard from: fromShip to: toShip
]

{ #category : #initialization }
ProtectorEffect >> initializeWith: aCreatedBy from: aFromShip to: aToShip [

	createdBy := aCreatedBy.
	fromShip := aFromShip.
	toShip := aToShip.
	^ self
]
