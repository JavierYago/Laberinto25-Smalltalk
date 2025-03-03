"
Es la pared del laberinto, donde no podemos atravesarla
"
Class {
	#name : #Pared,
	#superclass : #ElementoMapa,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #caminar }
Pared >> entrar:alguien [
	Transcript show:alguien printString; nextPutAll: ' ha chocado con una pared';cr.
]

{ #category : #consulta }
Pared >> esPared [ 
	^true
]

{ #category : #printing }
Pared >> printOn:aStream [

	aStream nextPutAll: 'Pared'.
]
