Algoritmo PuntoFijo
	Mostrar "�ste algoritmo realizar� las iteraciones que le pidas para obtener la informaci�n de la tabla de punto fijo"
	Mostrar "Escribe el valor de x0"
	Leer x
	Mostrar "�Cu�ntas iteraciones quieres realizar?"
	Leer n
	para i <- 0 Hasta n Hacer
		Mostrar Sin Saltar"i=", i
		Mostrar Sin Saltar "    x", i, "=", x
		Mostrar Sin Saltar "    g(", x, ")=", g(x)
		Mostrar "    f(", x, ")=", f(x)
		x <- g(x)
	FinPara
FinAlgoritmo
//Funcion y <- g(x) //Nota: aqu� debe insertar la funci�n obtenida tras despejar una de las 'x' del problema dado; generalmente es aquella que contiene 
//	             //un radical. (Ver notas del cuaderno)
//	y <- raiz(5*x+14)//x0=20
//FinFuncion
//La funci�n original fue x^2 -5*x -14 y el n�mero de iteraciones es 25
//Funcion y <- f(x)
//	y <- exp(x) - 3*x
//FinFuncion
//Funcion y <- g(x)
//	y <- exp(x)/3
//FinFuncion
Funcion y <- f(x)
	y <- x^2 +2*x -35
FinFuncion

Funcion y <- g(x)
	y <- -1/raiz(35-2*x)
FinFuncion

