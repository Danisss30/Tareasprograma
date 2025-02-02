Proceso DeterminarMomentoDelDia
	Definir hora Como Entero
	Definir momento Como Cadena
	Escribir 'Ingrese la hora del día (entre 0 y 23): '
	Leer hora
	Si hora<0 O hora>23 Entonces
		Escribir 'Error: La hora ingresada no es válida.'
	SiNo
		Si hora>=0 Y hora<=5 Entonces
			momento <- 'Madrugada'
		SiNo
			Si hora>=6 Y hora<=11 Entonces
				momento <- 'Mañana'
			SiNo
				Si hora>=12 Y hora<=13 Entonces
					momento <- 'Mediodía'
				SiNo
					Si hora>=14 Y hora<=19 Entonces
						momento <- 'Tarde'
					SiNo
						momento <- 'Noche'
					FinSi
				FinSi
			FinSi
		FinSi
		Escribir 'El momento del día es: ', momento
	FinSi
FinProceso
