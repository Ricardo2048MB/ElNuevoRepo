Algoritmo Biseccion
	intervaloValido <- Falso
	Repetir
		Escribir 'xi: ' Sin Saltar
		Leer xi
		Escribir 'xd: ' Sin Saltar
		Leer xd
		xm <- (xi+xd)/2
		Escribir 'Iteraciones: ' Sin Saltar
		Leer n
		Escribir ''
		Si f(xi)*f(xd)<0 Entonces
			intervaloValido <- Verdadero
			Para i<-0 Hasta n Hacer
				Si i=0 Entonces
					Escribir "f(", xi, ")*f(", xd, ") = ", f(xi)*f(xd)
					Escribir Sin Saltar "f(xi)*f(xd) < 0. Caso 1: "
					Escribir 'Existe una ra�z de la funci�n en el intervalo [',xi,', ',xd,']'
					Escribir ''
				FinSi
				Escribir 'Iteraci�n: ',i
				Escribir ''
				Escribir 'xi:',xi Sin Saltar
				Escribir '    xd:',xd Sin Saltar
				Escribir '    xm:', xm, " = (xi + xd)/2"
				Escribir 'f(xi):',f(xi) Sin Saltar
				Escribir '    f(xd):',f(xd) Sin Saltar
				Escribir '    f(xm):',f(xm)
				Escribir ''
				Si f(xd)*f(xm)<0 Entonces
					Escribir 'Caso 1: '
					Escribir 'f(xd)*f(xm) < 0'
					Escribir 'Entonces xi <- xm'
					xi <- xm
					xm <- (xi+xd)/2
				SiNo
					Si f(xd)*f(xm)>0 Entonces
						Escribir 'Caso 2: '
						Escribir 'f(xd)*f(xm) > 0'
						Escribir 'Entonces xd <- xm'
						xd <- xm
						xm <- (xi+xd)/2
					FinSi
				FinSi
				si i <> n Entonces
					Mostrar "_____________________________________________"
				FinSi
			FinPara
		SiNo
			Escribir "f(", xi, ")*f(", xd, ") = ", f(xi)*f(xd)
			Escribir Sin Saltar "f(xi)*f(xd) >= 0. Caso 2: "
			Escribir 'El intervalo [',xi,', ',xd,'] no sirve para encontrar la ra�z con �ste m�todo, elige otro'
			Escribir ''
			Escribir "1. Continuar y elegir otro intervalo"
			Escribir "2. Terminar la ejecuci�n del algoritmo"
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
					Escribir "Adi�s, mundo cruel, ya nunca te ver�..."
					Esperar 1500 Milisegundos
					Limpiar Pantalla
					Esperar 1700 Milisegundos
					intervaloValido <- Verdadero
				FinSi
			FinSi
		FinSi
	Hasta Que intervaloValido
FinAlgoritmo

//Funcion y <- f(x) //funci�n original
//	y <- x^4+3*x^3-2 //El intervalo a usar para �sta funci�n es [0, 1] y el n�mero de iteraciones requeridas son 3
//FinFuncion

//Funcion y <- f(x)
//	y <- x^2 -5*x -14//El intervalo es [5, 20] y el n�mero de iteraciones es 25
//FinFuncion

Funcion y <- f(x)
	y <- x^2 +2*x -35
FinFuncion