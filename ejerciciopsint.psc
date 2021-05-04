Proceso InfoAlumnos
	Definir edad Como Entero;
	Dimension edad[10]; 
	Definir nombre Como Caracter;
	Dimension nombre[10];
	Definir edadMax Como Entero;
	Definir i Como Entero;
	
	//Introducira datos hasta * o fin vector 
	i<-0;
	Repetir
		Escribir Sin Saltar "Dime el nombre de un alumno: "; 
		Leer nombre[i];
		
		Si nombre[i] <> "*" Entonces
			Escribir Sin Saltar "Dime su edad: "; 
			Leer edad[i]; 
		FinSi
		i <- i +1;
		
	Hasta Que nombre[i-1] = "*" o i=10; 
	
	//Vamos a sacar los alumnos mayores de edad (=>18)
	Escribir  "Alumnos mayores de edad"; 
	Escribir  "=======================";
	i<- 0; 
	Mientras i<10 y nombre[i]<>"*" Hacer 
		Si edad[i] >= 18 Entonces
			Escribir nombre[i];
		FinSi
		i<- i + 1; 
	FinMientras
	
	//Calcular la edad maxima 
	edadMax<- edad[0];
	i <- 0; 
	Mientras i < 10 y nombre[i] <> "*" Hacer
		Si edad[i] > edadMax Entonces
			edadMax <- edad[i];
		FinSi
		i<- i + 1; 
	FinMientras
	
	//Imprimimos los alumnos mayores 
	Escribir  "Alumnos con mayor edad"; 
	Escribir  "=======================";
	i<- 0; 
	Mientras i < 10 y nombre[i] <> "*" Hacer 
		Si edad[i] = edadMax Entonces 
			Escribir nombre[i]; 
		FinSi
		
		i<- i + 1;
	FinMientras
	
FinProceso
