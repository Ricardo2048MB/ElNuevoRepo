Algoritmo NewtonRaphson
	Mostrar "�ste algoritmo tratar� de hallar las ra�ces de una funci�n dada una x0 que le des"
	Mostrar Sin Saltar "x0:"
	Leer x
	Mostrar "�Cu�ntas iteraciones quieres?"
	Leer n
	Para i <- 0 Hasta n Hacer
		si i <> 0 Entonces
			x <- x-f(x)/fx(x)
		FinSi
		si f(x) = 0 Entonces
			si i <> n Entonces
				Mostrar "La respuesta se obtuvo antes de lo esperado"
				Mostrar "La respuesta es x", i, " = ", x
				i <- n
			FinSi
		SiNo
			Mostrar "i = ", i
			Mostrar "x", i, " = ", x
			//queda comentado
			//Mostrar "x", i + 1, "=", x, " - f(", x, ")/fx(", x, ")"
			//Mostrar "x", i + 1, "=", x-f(x)/fx(x)
			//queda comentado
			Mostrar "x", i + 1, " = ", x-f(x)/fx(x), " = x", i, " - f(x", i, ")/fx(x", i, ")"
		FinSi
		si i <> n Entonces
			Mostrar "_____________________________________________"
		FinSi
	FinPara
FinAlgoritmo
//Nota: �ste algoritmo encontr� la soluci�n del problema en la iteraci�n n�mero 5
//Funcion y <- f(x)//Aqu� se debe insertar la funci�n de la que queremos encontrar su ra�z (su cero)
//	y <- x^2 -5*x -14
//FinFuncion
//Funcion y <- fx(x)//Aqu� se debe insertar la derivada de la funci�n de arriba
//	y <- 2*x -5
//FinFuncion
//Para este caso particular x0 = 20 y el n�mero de iteraciones es 5

Funcion y <- f(x)
	y <- x^2 +2*x -35
FinFuncion

Funcion y <- fx(x)
	y <- 2*x +2
FinFuncion