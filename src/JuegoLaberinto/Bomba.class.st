"
Bomba es un EM que explota si está activa. Puede actuar como decorador.
"
Class {
	#name : #Bomba,
	#superclass : #Decorator,
	#instVars : [
		'activa'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #accessing }
Bomba >> activa [

	^ activa
]

{ #category : #accessing }
Bomba >> activa: anObject [

	activa := anObject
]

{ #category : #accessing }
Bomba >> entrar [ 
 self activa ifTrue:[Transcript show:'Te has chocado con una Bomba';cr.]
		ifFalse:[self em entrar]
]

{ #category : #initialization }
Bomba >> initialize [ 
	activa:=false.
]
