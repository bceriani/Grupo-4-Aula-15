"""
9) Crear una tupla en Python con el nombre de “Historial5” la cual contenga los siguientes valores:

          8520, 9510, 7530, 3570, 1590

Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Toto”.
Crear una función para determinar el valor máximo de atención gastada en “Toto”.
"""

# Creo tupla de gastos en Toto Historial5
Historial5 =(8520, 9510, 7530, 3570, 1590)

# Creo funcion que determina el valor maximo en atencion gastado para Toto
def GastoMayorToto(tupla):
    maximo = 0
    for i in tupla:
        if i > maximo:
            maximo = i
    return maximo

maximoAtencionToto = GastoMayorToto(Historial5)
print('El maximo gasto de atencion en "Toto" fue de: $', maximoAtencionToto)
