Proceso InfoAlumnos
	
	Definir edad Como Entero;
	Dimension edad[10];
	Definir nombre Como Caracter;
	Dimension nombre[10];
	Definir edad_max Como Entero;
	Definir i Como Entero;
	
	// introducira datos hasta * o fin vector
	i <- 0;
	Repetir
		
		Escribir Sin Saltar "Dime el nombre de un alumno: ";
		Leer nombre[i];
		Si nombre[i]<>"*" Entonces
			Escribir Sin Saltar "Dime su edad:";
			Leer edad[i];
		FinSi
		i <- i + 1;
		
	Hasta Que nombre[i]="*" o i=10; 
	
	// Vamos a sacar los alumnos mayores de edad (=>18)
	Escribir "Alumnos mayores de edad";
	Escribir "=======================";
	i <- 0;
	Mientras i<10 y nombre[i]<>"*" Hacer
		Si edad[i] >= 18 Entonces
			Escribir nombre[i];
		FinSi
		i <- i + 1;
	FinMientras
	
	//calcular la edad maxima
	edad_max <- edad[0];
	Mientras i<10 y nombre[i]<>"*" Hacer
		Si edad[i]>edad_max Entonces
			edad_max <- edad[i];
		FinSi
		i <- i + 1;
	FinMientras
	
	// Imprimimos los alumnos mayores
	Escribir "Alumnos con mayor edad";
	Escribir "=======================";
	i <- 0;
	Mientras i < 10 y nombre[i]<>"*" Hacer
		
		Si edad[i] = edad_max Entonces
			Escribir nombre[i];
		FinSi
		
		i <- i+1;
	FinMientras
	
	
FinProceso
