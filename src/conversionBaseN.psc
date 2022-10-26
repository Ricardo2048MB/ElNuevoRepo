Algoritmo conversionBaseN
	Mostrar ""
	Mostrar "Éste programa convertirá un número base 10 en su equivalente de base N"
	Mostrar ""
	Mostrar Sin Saltar "Escribe un número natural "
	Leer n
	Mostrar Sin Saltar "Escribe la base a la que quieres convertir el número "
	Leer base
	si n = 0 Entonces
		Mostrar ""
		Mostrar "El que es perico en donde quiera es verde"
		Mostrar ""
	SiNo
		si n < 0 Entonces
			Mostrar ""
			Mostrar "El logaritmo de un número negativo no está definido en los reales"
			Mostrar ""
		SiNo
			m <- n
			pos <- trunc(ln(n)/ln(base)) + 1 
			Dimension sistema[pos]
			Para i <- (pos - 1) Hasta 0 Con Paso -1 Hacer
				si n <> 0 Entonces
					sistema[i] <- n % base
					n <- trunc(n/base)
				FinSi
			FinPara
			Mostrar ""
			Mostrar Sin Saltar "El número ", m, " convertido a la base ", base, " es: "
			Para i <- 0 Hasta pos - 1 Con Paso 1 Hacer
				Mostrar Sin Saltar sistema[i]
				si i <> (pos - 1) Entonces
					Mostrar Sin Saltar "|"
				FinSi
			FinPara
			Mostrar ""
			Mostrar ""
		FinSi
	FinSi
FinAlgoritmo
//Número en la base decimal: 12356