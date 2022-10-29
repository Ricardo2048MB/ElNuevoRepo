Algoritmo BiseccionSimplificada
	intervaloValido <- Falso
	Repetir
		Escribir 'xi: '
		Leer xi
		Escribir 'xd: '
		Leer xd
		xm <- (xi+xd)/2
		Escribir 'Iteraciones: '
		Leer n
		Escribir ''
		Si f(xi)*f(xd)<0 Entonces
			intervaloValido <- Verdadero
			accionCasoI(xi,xd,xm,n)
		SiNo
			intervaloValido <- menuCasoII(xi,xd,n)
		FinSi
	Hasta Que intervaloValido
FinAlgoritmo

Funcion y <- menuCasoII(xi,xd,n)
	Escribir 'f(',xi,')*f(',xd,') = ',f(xi)*f(xd)
	Escribir 'f(xi)*f(xd) >= 0. Caso 2: '
	Escribir 'El intervalo [',xi,', ',xd,'] no sirve para encontrar la raíz con éste método, elige otro'
	Escribir ''
	Escribir '1. Continuar y elegir otro intervalo'
	Escribir '2. Terminar la ejecución del algoritmo'
	Escribir ''
	Leer n
	Si n=1 Entonces
		Escribir ''
		Escribir ''
		y <- Falso
	SiNo
		Si n=2 Entonces
			Borrar Pantalla
			Escribir 'Ok :c...'
			y <- Verdadero
		SiNo
			Borrar Pantalla
			Escribir 'Adios, mundo cruel, ya nunca te veré...'
			Esperar 1500 Milisegundos
			Borrar Pantalla
			Esperar 1700 Milisegundos
			y <- Verdadero
		FinSi
	FinSi
FinFuncion

Funcion accionCasoI(xi Por referencia,xd Por referencia,xm Por referencia,n)
	Para i<-0 Hasta n Hacer
		Si i=0 Entonces
			Escribir 'f(',xi,')*f(',xd,') = ',f(xi)*f(xd)
			Escribir 'f(xi)*f(xd) < 0. Caso 1: '
			Escribir 'Existe una raíz de la función en el intervalo [',xi,', ',xd,']'
			Escribir ''
		FinSi
		Escribir 'Iteración: ',i
		Escribir ''
		Escribir 'xi: ',xi
		Escribir "xd: ", xd
		Escribir 'xm: ',xm,' = (xi+xd)/2'
		Escribir 'f(xi): ',f(xi)
		Escribir 'f(xd): ',f(xd)
		Escribir 'f(xm): ',f(xm)
		Escribir ''
		Si f(xd)*f(xm)<0 Entonces
			Escribir 'Caso 1: '
			Escribir 'f(xd)*f(xm) < 0'
			Escribir 'Entonces xi <- xm'
			xi <- xm
			xm <- (xi+xd)/2
		SiNo
			Si f(xd)*f(xm)>0 Entonces
				Escribir 'Caso 2:'
				Escribir 'f(xd)*f(xm)'
				Escribir 'Entonces xd <- xm'
				xd <- xm
				xm <- (xi+xd)/2
			FinSi
		FinSi
		Si i<>n Entonces
			Escribir '_________________________________________'
		FinSi
	FinPara
FinFuncion

Funcion y <- f(x)
	y <- x^2+2*x-35
FinFuncion
