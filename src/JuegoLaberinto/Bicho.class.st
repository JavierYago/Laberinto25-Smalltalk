"
Bicho es el enemigo en el juego. Puede ser agresivo o perezoso.
"
Class {
	#name : #Bicho,
	#superclass : #Ente,
	#instVars : [
		'modo'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Bicho >> actua [
	"self modo actua:self"
	self estadoEnte actua:self.
]

{ #category : #ataques }
Bicho >> avisar [
self juego terminarBicho:self.
]

{ #category : #'as yet unclassified' }
Bicho >> buscarTunel [ 
	self modo buscarTunelBicho:self
]

{ #category : #consulta }
Bicho >> esAgresivo [
	^self modo esAgresivo
]

{ #category : #consulta }
Bicho >> esBoss [
	^self modo esBoss
]

{ #category : #consulta }
Bicho >> esPerezoso [
	^self modo esPerezoso
]

{ #category : #initialization }
Bicho >> iniAgresivo [
	self modo: Agresivo new.
	self poder:5.
]

{ #category : #initialization }
Bicho >> iniBoss [
	self modo: Boss new. "cablear"
	self poder:20.
	self vidas:10.

]

{ #category : #initialization }
Bicho >> iniPerezoso [
	self modo: Perezoso new. "cablear"
	self poder:1.
]

{ #category : #accessing }
Bicho >> modo [

	^ modo
]

{ #category : #accessing }
Bicho >> modo: anObject [

	modo := anObject
]

{ #category : #accessing }
Bicho >> obtenerOrientacion [

	^self posicion obtenerOrientacion
]

{ #category : #printing }
Bicho >> printOn:aStream [

	aStream nextPutAll: 'Bicho-'; nextPutAll:self modo asString.
]

{ #category : #'as yet unclassified' }
Bicho >> puedeActuar [
	self modo actua:self
]

{ #category : #ataques }
Bicho >> puedeAtacar [
	self juego buscarPersonaje:self.
]
