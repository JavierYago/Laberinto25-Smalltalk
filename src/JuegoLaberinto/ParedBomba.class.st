"
ParedBomba es una subclase de pared que tiene una variable de instancia activa.
"
Class {
	#name : #ParedBomba,
	#superclass : #Pared,
	#instVars : [
		'activa'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #accessing }
ParedBomba >> activa [

	^ activa
]

{ #category : #accessing }
ParedBomba >> activa: anObject [

	activa := anObject
]

{ #category : #initialization }
ParedBomba >> initialize [ 
	activa:=false
]
