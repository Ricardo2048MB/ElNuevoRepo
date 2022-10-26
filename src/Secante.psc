Algoritmo Secante
	z <- 0
	Mostrar Sin Saltar "x0: "
	leer x
	Mostrar Sin Saltar "x1: "
	leer y
	Mostrar "Iteraciones: "
	leer n
	para i <- 0 Hasta n Hacer
		Mostrar "i=", i
		Mostrar "x", i, "=", x
		Mostrar "x", i + 1, "=", y
		Mostrar "f(x", i, ")=", f(x)
		Mostrar "f(x", i + 1, ")=", f(y)
		z <- y - f(y)*(y-x)/(f(y)-f(x))
		Mostrar Sin Saltar "x", i + 2, " = ", z
		Mostrar " = ", y, " - ", f(y), "*(", y, " - ", x, ")/(", f(y), " - ", f(x), ")"
		x <- y
		y <- z
		si i <> n Entonces
			Mostrar "_____________________________________________"
		FinSi
	FinPara
FinAlgoritmo

Funcion y <- f(x)
	y <- x^2 +2*x -35
FinFuncion