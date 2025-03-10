"
Creator crea laberintos con Pared normal

"
Class {
	#name : #Creator,
	#superclass : #Object,
	#category : #'JuegoLaberinto-FactoryMethod'
}

{ #category : #'fm-bichos' }
Creator >> cambiarAModoAgresivo:unBicho [
	unBicho modo: Agresivo new.
	unBicho poder:5.
	
]

{ #category : #'fm-bichos' }
Creator >> fabricarBichoAgresivo [
	|bicho|
	bicho:=Bicho new.
	bicho modo: Agresivo new.
	bicho vidas:5.
	bicho poder:5.
	^bicho
]

{ #category : #'fm-bichos' }
Creator >> fabricarBichoAgresivo:unaHab [
	|bicho|
	bicho:=Bicho new.
	bicho modo: Agresivo new.
	bicho vidas:5.
	bicho poder:5.
	bicho posicion:unaHab.
	^bicho
]

{ #category : #'fm-bichos' }
Creator >> fabricarBichoPerezoso [
	|bicho|
	bicho:=Bicho new.
	bicho modo: Perezoso new.
	bicho vidas:1.
	bicho poder:1.
	^bicho
]

{ #category : #'fm-bichos' }
Creator >> fabricarBichoPerezoso:unaHab [
	|bicho|
	bicho:=Bicho new.
	bicho modo: Perezoso new.
	bicho vidas:1.
	bicho poder:1.
	bicho posicion:unaHab.
	^bicho
]

{ #category : #'factory method' }
Creator >> fabricarBomba [
	^Bomba new
]

{ #category : #'fm-bichos' }
Creator >> fabricarBoss [
	|bicho|
	bicho:=Bicho new.
	bicho modo: Boss new.
	bicho vidas:10.
	bicho poder:20.
	^bicho
]

{ #category : #'fm-bichos' }
Creator >> fabricarBoss:unaHab [
	|bicho|
	bicho:=Bicho new.
	bicho modo: Boss new.
	bicho vidas:10.
	bicho poder:20.
	bicho posicion:unaHab.
	^bicho
]

{ #category : #'factory method' }
Creator >> fabricarEste [
	^Este default
]

{ #category : #'factory method' }
Creator >> fabricarHabitacion:unNum [
|hab|
	hab:=Habitacion new num:unNum.
	hab agregarOrientacion: self fabricarNorte; agregarOrientacion: self fabricarSur; agregarOrientacion:self fabricarEste; agregarOrientacion:self fabricarOeste.
	
	hab orientaciones do:[:each | hab ponerEnOr:each elemento:self fabricarPared].
	"hab este:self fabricarPared.
	hab oeste:self fabricarPared.
	hab norte:self fabricarPared.
	hab sur:self fabricarPared."	
	^hab
]

{ #category : #'factory method' }
Creator >> fabricarJuego [
	"^ es un return"
	^Juego new
]

{ #category : #'factory method' }
Creator >> fabricarLaberinto [
	^Laberinto new
]

{ #category : #'factory method' }
Creator >> fabricarNorte [
	^Norte default.
]

{ #category : #'factory method' }
Creator >> fabricarOeste [
	^Oeste default 
]

{ #category : #'factory method' }
Creator >> fabricarPared [
	^Pared new
]

{ #category : #'factory method' }
Creator >> fabricarPuerta [
	^Puerta new
]

{ #category : #'factory method' }
Creator >> fabricarSur [
	^Sur default
]
