"
Es el laberinto el cual vamos a recorrer para completar el juego
"
Class {
	#name : #Laberinto,
	#superclass : #Contenedor,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #habitaciones }
Laberinto >> agregarHabitacion:unaHabitacion [

	self hijos add:unaHabitacion
]

{ #category : #habitaciones }
Laberinto >> eliminarHabitacion:unaHabitacion [
	self hijos remove:unaHabitacion ifAbsent:["no existe la habitacion"]
]

{ #category : #caminar }
Laberinto >> entrar [
	"que significa entrar en el laberinto???? entrar en la habitacion 1"
]

{ #category : #habitaciones }
Laberinto >> obtenerHabitacion:unNum [

	^self hijos detect:[:each | each num=unNum] ifNone:[nil].
]
