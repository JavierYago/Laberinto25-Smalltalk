"
Es la pared del laberinto, donde no podemos atravesarla
"
Class {
	#name : #Pared,
	#superclass : #ElementoMapa,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #caminar }
Pared >> entrar [
	Transcript show:'Te has chocado con una pared';cr.
]
