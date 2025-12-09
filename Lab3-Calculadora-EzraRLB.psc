SubProceso resultado <- suma(a, b)
	Definir resultado Como Real;
	resultado <- a + b;
FinSubProceso

SubProceso resultado <- resta(a, b)
	Definir resultado Como Real;
	resultado <- a - b;
FinSubProceso

SubProceso resultado <- multiplicacion(a, b)
	Definir resultado Como Real;
	resultado <- a * b;
FinSubProceso

SubProceso resultado <- division(a, b)
	Definir resultado Como Real;
	resultado <- a / b;
FinSubProceso

Algoritmo Calculadora
	
	// Definimos las variables a utilizar por nuestro Algoritmo.
	Definir opcionCalculadora Como Caracter;
	Definir a Como Real;
	Definir b Como Real;
	Definir r Como Real;
	
	// Mostramos el menú al usuario.
	Imprimir "¿Qué deseas hacer?";
	Imprimir "+ -> Sumar.";
	Imprimir "- -> Resta.";
	Imprimir "* -> Multiplicación.";
	Imprimir "/ -> División.";
	
	// Recibimos su opción de operación.
	Escribir "Escribe tu opción.";
	Leer opcionCalculadora;
	
	// Le pedimos al usuario sus dos números con el cuál realizar el cálculo.
	Escribir "Escribe tu primer número con el cuál calcular:";
	Leer a;
	Escribir "Escribe tu segundo número con el cuál calcular:";
	Leer b;
	
	// Entramos en la estructura Según, o Switch:
	Segun opcionCalculadora Hacer
		"+": // Suma
			r <- suma(a, b);
			Imprimir "El resultado de la suma de ", a, " más ", b, " es igual a ", r, ".";
		"-": // Resta
			r <- resta(a, b);
			Imprimir "El resultado de la resta de ", a, " menos ", b, " es igual a ", r, ".";
		"*": // Multiplicación
			r <- multiplicacion(a, b);
			Imprimir "El resultado de la multiplicación de ", a, " por ", b, " es igual a ", r, ".";
		"/": // División
			r <- division(a, b);
			Imprimir "El resultado de la división de ", a, " entre ", b, " es igual a ", r, ".";			
			
		De Otro Modo:
			Escribir "Opción incorrecta"; // Se cierra la calculadora sin operación a ejecutar.
			
	FinSegun
	
FinAlgoritmo

