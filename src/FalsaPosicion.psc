Algoritmo FalsaPosicion
	intervaloValido <- Falso
	Repetir
		Mostrar Sin Saltar "xi: "
		Leer xi
		Mostrar Sin Saltar "xd: "
		Leer xd
		xm <- xd - f(xd) * (xd - xi) / (f(xd) - f(xi))
		Mostrar Sin Saltar "Iteraciones: "
		Leer n
		Mostrar ""
		si f(xi) * f(xd) < 0 Entonces
			intervaloValido <- Verdadero
			Para i <- 0 Hasta n Con Paso 1 Hacer
				si i = 0 Entonces
					Escribir "f(", xi, ")*f(", xd, ") = ", f(xi)*f(xd)
					Escribir Sin Saltar "f(xi)*f(xd) < 0. Caso 1: "
					Mostrar "Existe una raíz de la función en el intervalo [", xi, ", ", xd, "]"
					Mostrar ""
				FinSi
				Mostrar "Iteración: " i
				Mostrar ""
				Mostrar Sin Saltar "xi:" xi
				Mostrar "    xd:" xd
				Mostrar Sin Saltar "f(xi):" f(xi)
				Mostrar "    f(xd):" f(xd)
				Mostrar "xm:", xd - f(xd) * (xd - xi) / (f(xd) - f(xi)), " = ", xd, " - ", f(xd), "*(", xd, " - ", xi, ")/(", f(xd), " - ", f(xi), ")"
				Mostrar "f(xm):" f(xm)
				Mostrar ""
				si f(xd) * f(xm) < 0 Entonces
					Mostrar "Caso 1: "
					Mostrar "f(xd)*f(xm) < 0"
					Mostrar "Entonces xi <- xm"
					xi <- xm
					xm <- xd - f(xd) * (xd - xi) / (f(xd) - f(xi))
				SiNo
					si f(xd) * f(xm) > 0 Entonces
						Mostrar "Caso 2: "
						Mostrar "f(xd)*f(xm) > 0"
						Mostrar "Entonces xd <- xm"
						xd <- xm
						xm <- xd - f(xd) * (xd - xi) / (f(xd) - f(xi))
					FinSi
				FinSi
				si i <> n Entonces
					Mostrar "_____________________________________________"
				FinSi
			FinPara
		SiNo
			Escribir "f(", xi, ")*f(", xd, ") = ", f(xi)*f(xd)
			Escribir Sin Saltar "f(xi)*f(xd) >= 0. Caso 2: "
			Escribir 'El intervalo [',xi,', ',xd,'] no sirve para encontrar la raíz con éste método, elige otro'
			Escribir ''
			Escribir "1. Continuar y elegir otro intervalo"
			Escribir "2. Terminar la ejecución del algoritmo"
			Escribir ''
			leer n
			si n = 1 Entonces
				Escribir ''
				Escribir ''
				intervaloValido <- Falso
			SiNo
				si n = 2 Entonces
					Limpiar Pantalla
					Escribir "ok :c ..."
					intervaloValido <- Verdadero
				SiNo
					Limpiar Pantalla
					Escribir "Adiós, mundo cruel, ya nunca te veré..."
					Esperar 1500 Milisegundos
					Limpiar Pantalla
					Esperar 1700 Milisegundos
					intervaloValido <- Verdadero
				FinSi
			FinSi
		FinSi
	Hasta Que intervaloValido
FinAlgoritmo
//Funcion y <- f(x)//función original
//	y <- 3*x^3+2*x+2 // El intervalo es [-1, -0.5] y el número de iteraciones es 3
//FinFuncion
//Funcion y <- f(x)
//	y <- x^2 -5*x -14//El intervalo es [5, 20] y el número de iteraciones es 52
//FinFuncion

Funcion y <- f(x)
	y <- x^2 +2*x -35
FinFuncion
