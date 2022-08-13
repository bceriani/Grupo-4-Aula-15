from statistics import mean

#Creación de tupla

Historial3= ("9530","4120","4580","1500","890","7516","426")
print (Historial3)

#Cálculo de promedio y condicional

gastosLennon= [9530,4120,4580,1500,890,7516,426]
mean = sum (gastosLennon)/len(gastosLennon)
if mean >4500:
    print (round(mean) ,": Se ha excedido del gasto promedio de su mascota")
else: print (round(mean))
