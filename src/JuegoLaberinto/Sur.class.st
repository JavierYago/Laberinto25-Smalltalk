Class {
	#name : #Sur,
	#superclass : #Orientacion,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'gestion-orientaciones' }
Sur >> obtenerElementoOr:unContenedor [
	^unContenedor sur.
]

{ #category : #'as yet unclassified' }
Sur >> ponerElemento:unEM en:unContenedor [
	unContenedor sur:unEM
]
