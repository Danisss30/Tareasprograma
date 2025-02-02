// DANIELA NOHEMY DIVAS CARRILLO 
Proceso Misil
	
	Escribir "Presione una tecla para iniciar el lanzamiento!"
	Esperar Tecla
	
	Definir cohete como Texto
	Definir i,j,estado como Enteros
	
	// el arreglo cohete tiene el dibujo del cohete como lineas de texto
	dimension cohete[9]
	cohete[0]<-"   /|\   "
	cohete[1]<-"   |B|   "
	cohete[2]<-"   |O|   "
	cohete[3]<-"   |M|   "
	cohete[4]<-"   |B|   "
	cohete[5]<-"  //|\\  "
	cohete[6]<-" ******* "
	cohete[7]<-"* * * * *"
	cohete[8]<-" * * * * "
	
	// primero se muestra la primer parte del dibujo y la cuenta regresiva
	Para i<-1 hasta 11 Hacer
		Borrar Pantalla
		Para j<-1 hasta 15 Hacer
			Escribir ""
		FinPara
		Para j<-0 hasta 5 Hacer
			Escribir cohete[j]
		FinPara
		Escribir ""
		Escribir "Lanzamiento en ",11-i
		Esperar 1 Segundo
	FinPara
	
	// despues se muestra el dibujo completo y cada vez mas arriba
	Para i<-1 hasta 15 Hacer
		Borrar Pantalla
		Para j<-i hasta 15 Hacer
			Escribir ""
		FinPara
		Para j<-0 hasta 7 Hacer
			Escribir cohete[j]
		FinPara
		si i>1 Entonces
			Escribir " * * * * "
		finsi
		Esperar 1/i Segundo
	FinPara
	
	// finalmente se va modificando el dibujo para hacer la explosion
	// estado tiene un entero que dice en que parte de la explosion va cada linea del dibujo
	Dimension estado[6]
	estado[0]<-3; estado[1]<-2; estado[2]<-1
	estado[3]<-2; estado[4]<-3; estado[5]<-4
	Para i<-1 hasta 10 Hacer
		Borrar Pantalla
		Para j<-0 hasta 5 Hacer
			Estado[j]<-Estado[j]-1
			segun Estado[j] Hacer
				0:  cohete[j]<-"    +    "
				-1,-5: cohete[j]<-"   +X+   "
				-2,-4: cohete[j]<-"  +XXX+  "
				-3: cohete[j]<-" +XXXXX+ "
				-6: cohete[j]<-"         "
			FinSegun
			Escribir cohete[j]
		FinPara
		
		Esperar .2 Segundos
	FinPara
	
FinProceso
