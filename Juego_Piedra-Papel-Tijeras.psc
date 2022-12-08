// Juego de Piedra/Papel/Tijeras entre usuario y Máquina
// Ejercicio de práctica de Laboratorio
// Rodrigo Díaz Ayala
Algoritmo Piedra_Papel_Tijeras
	// Declaraciones
	Definir usuario Como Caracter
	Definir maquina Como Caracter
	Definir num_aleatorio Como Entero
	Definir pedir Como Logico
	// Asiganciones iniciales
	usuario <- ''
	maquina <- ''
	pedir <- Verdadero
	// Usuario Juega
	Escribir '- JUEGO DE PIEDRA/PAPEL/TIJERAS -'
	Mientras (pedir=Verdadero) Hacer
		Escribir 'Escoge entre Piedra, Papel o Tijeras: '
		Leer usuario
		usuario <- Mayusculas(usuario)
		Si usuario='PIEDRA' O usuario='PAPEL' O usuario='TIJERAS' Entonces
			pedir <- Falso
		SiNo
			pedir <- Verdadero
			Escribir '**Debes escribir piedra, papel o tijeras'
			Escribir ''
		FinSi
	FinMientras
	// Mquina Juega
	num_aleatorio <- Aleatorio(1,3)
	Segun num_aleatorio  Hacer
		1:
			maquina <- 'PIEDRA'
		2:
			maquina <- 'PAPEL'
		3:
			maquina <- 'TIJERAS'
		De Otro Modo:
			maquina <- 'No alcancé a escoger :-('
	FinSegun
	Escribir ''
	// Se analiza jugada y se determina ganador
	Escribir 'Tú escogiste: ',usuario
	Escribir 'Maquina escogió: ',maquina
	Escribir ''
	Segun maquina  Hacer
		'PIEDRA':
			Segun usuario  Hacer
				'PIEDRA':
					Escribir 'Resultado:   ¡EMPATE!'
				'PAPEL':
					Escribir 'Resultado:   ¡TÚ GANAS! :-)'
				'TIJERAS':
					Escribir 'Resultado:   ¡MAQUINA GANA! :-('
				De Otro Modo:
					Escribir 'No se pudo determinar el ganador'
			FinSegun
		'PAPEL':
			Segun usuario  Hacer
				'PIEDRA':
					Escribir 'Resultado:   ¡MAQUINA GANA! :-('
				'PAPEL':
					Escribir 'Resultado:   ¡EMPATE!'
				'TIJERAS':
					Escribir 'Resultado:   ¡TÚ GANAS! :-)'
				De Otro Modo:
					Escribir 'No se pudo determinar el ganador'
			FinSegun
		'TIJERAS':
			Segun usuario  Hacer
				'PIEDRA':
					Escribir 'Resultado:   ¡TÚ GANAS! :-)'
				'PAPEL':
					Escribir 'Resultado:   ¡MAQUINA GANA! :-('
				'TIJERAS':
					Escribir 'Resultado:   ¡EMPATE!'
				De Otro Modo:
					Escribir 'No se pudo determinar el ganador'
			FinSegun
		De Otro Modo:
			Escribir 'No se pudo determinar el ganador'
	FinSegun
	Escribir '¡Adiós!'
FinAlgoritmo
