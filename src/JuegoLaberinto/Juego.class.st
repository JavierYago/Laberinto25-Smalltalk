"
Juego es la clase principal del juego del laberinto
"
Class {
	#name : #Juego,
	#superclass : #Object,
	#instVars : [
		'laberinto',
		'bichos',
		'hilos',
		'person'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Juego >> abrirPuertas [ 
	self laberinto abrirPuertas
]

{ #category : #'gestion-bichos' }
Juego >> agregarBicho:unBicho [
	self bichos add:unBicho.
	unBicho juego:self.
]

{ #category : #'as yet unclassified' }
Juego >> agregarPersonaje:unaCadena [
	self person:(Personaje new nombre:unaCadena).
	self person juego:self.
	self laberinto entrar: self person.
]

{ #category : #accessing }
Juego >> bichos [

	^ bichos
]

{ #category : #accessing }
Juego >> bichos: anObject [

	bichos := anObject
]

{ #category : #ataques }
Juego >> buscarPersonaje:unBicho [
	|posBicho posPerson|
	posBicho:=unBicho posicion. "mensajes 8 y 9"
	posPerson:= self person posicion. "mensajes 10 y 11"
	
	posBicho = posPerson ifTrue:[self person esAtacadoPor:unBicho].
]

{ #category : #'as yet unclassified' }
Juego >> cerrarPuertas [ 
	self laberinto cerrarPuertas 
]

{ #category : #laberintos }
Juego >> crearLaberinto1H1BB:unFM [
"unFM sebe ser una instancia de Creator"

	| hab1 bichoBoss|
	
	hab1:=unFM fabricarHabitacion:1.

	bichoBoss:=unFM fabricarBoss.
	
	self laberinto:unFM fabricarLaberinto.
	self laberinto agregarHabitacion:hab1.
	self agregarBicho:bichoBoss.
	
	bichoBoss posicion:hab1.

	^self laberinto
]

{ #category : #laberintos }
Juego >> crearLaberinto2Habitaciones [

	| hab1 hab2 puerta|
	
	hab1:=Habitacion new num:1.
	hab1 este:Pared new.
	hab1 oeste:Pared new.
	hab1 norte:Pared new.
	
	hab2:=Habitacion new num:2.
	hab2 sur:Pared new.
	hab2 este:Pared new.
	hab2 oeste:Pared new.
	
	puerta:=Puerta new.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	hab1 sur:puerta.
	hab2 norte:puerta.
	
	self laberinto:Laberinto new.
	self laberinto agregarHabitacion:hab1.
	self laberinto agregarHabitacion:hab2.
	
	^self laberinto
]

{ #category : #laberintos }
Juego >> crearLaberinto2HabitacionesFM [

	| hab1 hab2 puerta unFM|
	
	unFM:=Creator new. "cablear o acoplar"
	
	hab1:=unFM fabricarHabitacion:1.
	
	hab2:=unFM fabricarHabitacion:2.
	
	puerta:=unFM fabricarPuerta.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	hab1 sur:puerta.
	hab2 norte:puerta.
	
	self laberinto:unFM fabricarLaberinto.
	self laberinto agregarHabitacion:hab1.
	self laberinto agregarHabitacion:hab2.
	
	^self laberinto
]

{ #category : #laberintos }
Juego >> crearLaberinto2HabitacionesFM:unFM [
"unFM sebe ser una instancia de Creator"

	| hab1 hab2 puerta|
	
	hab1:=unFM fabricarHabitacion:1.
	
	hab2:=unFM fabricarHabitacion:2.
	
	puerta:=unFM fabricarPuerta.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	
	hab1 ponerEnOr:unFM fabricarSur elemento:puerta.
	hab2 ponerEnOr:unFM fabricarNorte elemento:puerta.
	"hab1 sur:puerta.
	hab2 norte:puerta."
	
	self laberinto:unFM fabricarLaberinto.
	self laberinto agregarHabitacion:hab1.
	self laberinto agregarHabitacion:hab2.
	
	^self laberinto
]

{ #category : #laberintos }
Juego >> crearLaberinto2HabitacionesFMD:unFM [
"unFM sebe ser una instancia de Creator"

	| hab1 hab2 puerta bomba1 bomba2|
	
	hab1:=unFM fabricarHabitacion:1.
	hab2:=unFM fabricarHabitacion:2.
	
	bomba1:=unFM fabricarBomba.
	bomba1 em:unFM fabricarPared.
	hab1 este: bomba1.
	
	bomba2:=unFM fabricarBomba. "unFM fabricarBomba:unFM fabricarPared"
	bomba2 em:unFM fabricarPared.
	hab2 este: bomba2.
	
	puerta:=unFM fabricarPuerta.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	hab1 sur:puerta.
	hab2 norte:puerta.
	
	self laberinto:unFM fabricarLaberinto.
	self laberinto agregarHabitacion:hab1.
	self laberinto agregarHabitacion:hab2.
	
	^self laberinto
]

{ #category : #laberintos }
Juego >> crearLaberinto4H4BFM:unFM [
"unFM sebe ser una instancia de Creator"

	| hab1 hab2 hab3 hab4 puerta1 puerta2 puerta3 puerta4 norte sur este oeste|
	norte:=unFM fabricarNorte.
	sur:=unFM fabricarSur.
	este:=unFM fabricarEste.
	oeste:=unFM fabricarOeste.
	hab1:=unFM fabricarHabitacion:1.
	hab2:=unFM fabricarHabitacion:2.
	hab3:=unFM fabricarHabitacion:3.
	hab4:=unFM fabricarHabitacion:4. 
	
	puerta1:=unFM fabricarPuerta.
	puerta2:=unFM fabricarPuerta.
	puerta3:=unFM fabricarPuerta.
	puerta4:=unFM fabricarPuerta.
	puerta1 lado1:hab1.
	puerta1 lado2:hab2.
	puerta2 lado1:hab1.
	puerta2 lado2:hab3.
	puerta3 lado1:hab2.
	puerta3 lado2:hab4.
	puerta4 lado1:hab3.
	puerta4 lado2:hab4.
	
	hab1 ponerEnOr:sur elemento:puerta1.
	hab2 ponerEnOr:norte elemento:puerta1.
	hab1 ponerEnOr:este elemento:puerta2.
	hab3 ponerEnOr:oeste elemento:puerta2.
	hab2 ponerEnOr:este elemento:puerta3.
	hab4 ponerEnOr:oeste elemento:puerta3.
	hab3 ponerEnOr:sur elemento:puerta4.
	hab4 ponerEnOr:norte elemento:puerta4.
	
	
	self laberinto:unFM fabricarLaberinto.
	self laberinto agregarHabitacion:hab1.
	self laberinto agregarHabitacion:hab2.
	self laberinto agregarHabitacion:hab3.
	self laberinto agregarHabitacion:hab4.
	self agregarBicho:(unFM fabricarBichoAgresivo: hab1).
	self agregarBicho:(unFM fabricarBichoAgresivo: hab2).
	self agregarBicho:(unFM fabricarBichoPerezoso: hab3).
	self agregarBicho:(unFM fabricarBichoPerezoso: hab4).
	
	^self laberinto
]

{ #category : #'gestion-bichos' }
Juego >> eliminarBichos:unBicho [
	self bichos remove:unBicho ifAbsent:[Transcript show:'No existe el bicho';cr.]
]

{ #category : #accessing }
Juego >> hilos [

	^ hilos
]

{ #category : #accessing }
Juego >> hilos: anObject [

	hilos := anObject
]

{ #category : #initialization }
Juego >> initialize [ 
	bichos:=OrderedCollection new.
	hilos:=Dictionary new.
]

{ #category : #accessing }
Juego >> laberinto [

	^ laberinto
]

{ #category : #accessing }
Juego >> laberinto: anObject [

	laberinto := anObject
]

{ #category : #'gestion-bichos' }
Juego >> lanzarBicho:unBicho [
	| proceso |
	Transcript show:unBicho printString ; nextPutAll: ' se activa';cr.
	 proceso:=[ [unBicho estaVivo] whileTrue:[unBicho actua]] fork.
 	self hilos at:unBicho put:proceso.
]

{ #category : #'gestion-bichos' }
Juego >> lanzarBichos [
	
	self bichos do:[:each | self lanzarBicho:each]
]

{ #category : #ataques }
Juego >> muerePersonaje [
	Transcript show: 'Fin del juego'; cr.
	self terminarBichos.
]

{ #category : #accessing }
Juego >> obtenerHabitacion:unNum [

	"delegar y devolver lo que le de el laberinto"
	^self laberinto obtenerHabitacion:unNum
	
]

{ #category : #accessing }
Juego >> person [

	^ person
]

{ #category : #accessing }
Juego >> person: anObject [

	person := anObject
]

{ #category : #'gestion-bichos' }
Juego >> terminarBicho:unBicho [
Transcript show:unBicho printString ; nextPutAll: ' muere';cr.
	unBicho vidas:0.
]

{ #category : #'gestion-bichos' }
Juego >> terminarBichos [
	
	self bichos do:[:each | self terminarBicho:each]
]
