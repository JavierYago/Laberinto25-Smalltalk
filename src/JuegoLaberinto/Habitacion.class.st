"
Es una habitación
"
Class {
	#name : #Habitacion,
	#superclass : #Contenedor,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #consulta }
Habitacion >> esHabitacion [ 	
	^true
]

{ #category : #printing }
Habitacion >> printOn:aStream [

	aStream nextPutAll: 'Hab' ; nextPutAll:self num asString.
]

{ #category : #visitor }
Habitacion >> visitarContenedor: unVisitor [
	unVisitor visitarHabitacion:self
]
