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

{ #category : #'helper methods' }
ProtectorEffect >> can: aShip protect: anotherShip [

	^ anotherShip isPenalized not and: (toShip = anotherShip and: fromShip = aShip)
]

{ #category : #initialization }
ProtectorEffect >> initializeWith: aCreatedBy from: aFromShip to: aToShip [

	createdBy := aCreatedBy.
	fromShip := aFromShip.
	toShip := aToShip.
	^ self
]

{ #category : #'helper methods' }
ProtectorEffect >> is: aShip protectorOf: anotherShip [

	^ (toShip = anotherShip and: fromShip = aShip)
]

{ #category : #removing }
ProtectorEffect >> removeEffect [

	fromShip removeProtector: toShip
]

{ #category : #'helper methods' }
ProtectorEffect >> revertEffect [
]
