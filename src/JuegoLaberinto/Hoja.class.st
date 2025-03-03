"
Hoja es la interfaz común de los EM simples
"
Class {
	#name : #Hoja,
	#superclass : #ElementoMapa,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #recorrido }
Hoja >> recorrer:unBloque [
	unBloque value:self
]
