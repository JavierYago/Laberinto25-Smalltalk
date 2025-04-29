"
Armario es un contenedor por definir
"
Class {
	#name : #Armario,
	#superclass : #Contenedor,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Armario >> esArmario [
	^true
]

{ #category : #visitor }
Armario >> visitarContenedor:unVisitor [
	unVisitor visitarArmario:self
]
