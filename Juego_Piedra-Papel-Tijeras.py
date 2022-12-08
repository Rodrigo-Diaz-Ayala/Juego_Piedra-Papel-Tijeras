"""
Juego de Piedra/Papel/Tijeras entre usuario y Máquina
Ejercicio de práctica de Laboratorio
Rodrigo Díaz Ayala
"""

import random

usuario = ""
maquina = ""
aleatorio = 0

print("\n- JUEGO DE PIEDRA/PAPEL/TIJERAS -")

"""Usuario juega"""

while True:
    usuario = str(input("\nEscoge entre Piedra, Papel o Tijeras: ")).upper()
    if usuario == "PIEDRA" or usuario == "PAPEL" or usuario == "TIJERAS":
        break
    else :
        print("**Debes escribir piedra, papel o tijeras")

"""Máquina Juega"""
aleatorio = random.randint(1,3)
if aleatorio == 1:
    maquina = "PIEDRA"
elif aleatorio == 2:
    maquina = "PAPEL"
else :
    maquina = "TIJERAS"

"""Da resultados"""
print("\nTú escogiste: ",usuario,"\n")
print("Yo escogí:    ", maquina,"\n")
if maquina == "PIEDRA":
    if usuario == "PIEDRA":
        print("Resultado:   ¡EMPATE!")
    elif usuario == "PAPEL":
        print("Resultado:   ¡TÚ GANAS! :-)")
    else : # "TIJERAS"
        print("Resultado:   ¡MAQUINA GANA! :-(")
elif maquina == "PAPEL":
    if usuario == "PIEDRA":
        print("Resultado:   ¡MAQUINA GANA! :-(")
    elif usuario == "PAPEL":
        print("Resultado:   ¡EMPATE!")
    else : # "TIJERAS"
        print("Resultado:   ¡TÚ GANAS! :-)")
else : # "TIJERAS"
    if usuario == "PIEDRA":
        print("Resultado:   ¡TÚ GANAS! :-)")
    elif usuario == "PAPEL":
        print("Resultado:   ¡MAQUINA GANA! :-(")
    else : # "TIJERAS"
        print("Resultado:   ¡EMPATE!")

print("\n¡Adiós!\n")
