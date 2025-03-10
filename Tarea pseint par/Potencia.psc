// Daniela Nohemy Divas Carrillo 
// Implementaci�n del c�lculo de una potencia mediante una funci�n recursiva
// El paso recursivo se basa en que A^B = B*(A^(B-1))
// El paso base se base en que A^0 = 1

SubProceso resultado <- Potencia (base, exponente)
    Definir resultado como Entero
    Si exponente=0 Entonces
        resultado <- 1;
    sino 
        resultado <- base*Potencia(base,exponente-1); 
    FinSi
FinSubProceso

Proceso DosALaDiezRecursivo
    Definir exponente como Entero
    Definir base como Entero
    Escribir "Ingrese Base"
    Leer base
    Escribir "Ingrese Exponente"
    Leer exponente
    Escribir "El resultado es ",Potencia(base,exponente)
FinProceso
