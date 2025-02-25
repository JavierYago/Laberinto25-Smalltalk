Class {
	#name : #Oeste,
	#superclass : #Orientacion,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'gestion-orientaciones' }
Oeste >> obtenerElementoOr:unContenedor [
	^unContenedor oeste.
]

{ #category : #'as yet unclassified' }
Oeste >> ponerElemento:unEM en:unContenedor [
	unContenedor oeste:unEM
]
