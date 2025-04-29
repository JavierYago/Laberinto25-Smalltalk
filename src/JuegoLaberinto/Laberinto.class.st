"
Es el laberinto el cual vamos a recorrer para completar el juego
"
Class {
	#name : #Laberinto,
	#superclass : #Contenedor,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Laberinto >> abrirPuertas [
	self recorrer:[:each | each esPuerta ifTrue:[each abrir]].
]

{ #category : #recorrido }
Laberinto >> aceptar:unVisitor [
	
	self hijos do:[:each | each aceptar:unVisitor].
	"no tiene forma, luego no recorre las orientaciones"
]

{ #category : #habitaciones }
Laberinto >> agregarHabitacion:unaHabitacion [

	self hijos add:unaHabitacion
]

{ #category : #'as yet unclassified' }
Laberinto >> cerrarPuertas [
	self recorrer:[:each | each esPuerta ifTrue:[each cerrar]].
]

{ #category : #habitaciones }
Laberinto >> eliminarHabitacion:unaHabitacion [
	self hijos remove:unaHabitacion ifAbsent:["no existe la habitacion"]
]

{ #category : #caminar }
Laberinto >> entrar:alguien [
	|hab1|
	hab1:=self obtenerHabitacion:1.
	hab1 entrar:alguien.
]

{ #category : #consulta }
Laberinto >> esLaberinto [ 
	^true
]

{ #category : #habitaciones }
Laberinto >> obtenerHabitacion:unNum [

	^self hijos detect:[:each | each num=unNum] ifNone:[nil].
]

{ #category : #printing }
Laberinto >> printOn:aStream [

	aStream nextPutAll: 'Laberinto'.
]

{ #category : #recorrido }
Laberinto >> recorrer:unBloque [
	unBloque value:self.
	self hijos do:[:each | each recorrer:unBloque].
	"no tiene forma, luego no recorre las orientaciones"
]
