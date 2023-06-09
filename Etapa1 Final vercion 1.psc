// Es un men� con diversas funciones
//Jason Quesada G�mez. C36213
// Fabi�n Quesada Cordero. C36202 
//17/5/2023
//Version 0.1
Algoritmo Proyecto_programado
	User //Invocamos a la funci�n User y guardamos el nombre del usuario
FinAlgoritmo
Funcion User //Presentamos a los creadores del algoritmo
	Definir Name_User como caracter // Definimos la variable  
	Escribir "Proyecto del curso IF1300 Introducci�n a la computaci�n e inform�tica"
	Escribir "Programadores: Fabi�n Quesada Cordero y Jason Quesada G�mez "
	Escribir "Ingrese su nombre de usuario: "
	leer Name_User
	Limpiar Pantalla // Se limpia lo anterior
	Escribir "Te damos la bienvenida a nuestro programa ", Name_User // Le damos la bienvenida al usuario
	menu(Name_User) // Llamamos a la funci�n men� 
FinFuncion
Funcion menu(Name_User) //Permite al usuario elegir una opci�n con la que desea trabajar
	Definir Exit,revision,contador Como Entero
	Definir opcion_menu Como Caracter
	Exit = 0 
	Mientras Exit == 0 // Iniciamos el ciclo del men� solo si salir es 0
		//Escribir en consola el men� principal
		Escribir "*************************** Men� Principal *****************************"
		escribir "A. Cuadrado"
		escribir "B. Encriptador"
		escribir "C. Conversor de base"
		escribir "D. Salir"
		Leer opcion_menu //Se guarda la opcion que ingreso el usuario en la variable 
		revision = 1//Siempre que se guarde una opci�n revisi�n es 1 para posteriormente verificar si la opci�n
		//            es correcta
		Mientras revision = 1 //Se revisa si revision es 1 si esto es corecto revisa si la opcion es correcta
			
			Segun opcion_menu Hacer //Seg�n lo que el usuario haya introducido se realiza una acci�n 
				"a","A":
					revision = 0 //revision pasa a ser 0 porque se entro en una opcion correcta
					Exit = Cuadrado//Se llama a la funci�n Cuadrado,La funcion Cuadrado manda un valor 
					//                ya sea 0 si no se quiere salir o 1 si se quire salir 
				"b","B":
					revision = 0//revision pasa a ser 0 porque se entro en una opcion correcta
					Exit = Encriptador//, Se llama a la funci�n Encriptador,La funcion Encriptador manda un valor
					//                 ya sea 0 si no se quiere salir o 1 si se quire salir 
				"c","C":
					revision = 0//revision pasa a ser 0 porque se entro en una opcion correcta
					Exit = Conversor_de_base//Se llama a la funci�n Conversor_de_base, La funci�n Cuadrado manda un valor
					//                       ya sea 0 si no se quiere salir o 1 si se quire salir 
				"d","D":
					Exit = salida// Se eligio la opcion salir por lo que exir es 1 para que no se repita el ciclo de menu principal 
					revision = 0//revision pasa a ser 0 porque se entro en una opcion correcta
					
				De Otro Modo://Si ninguna de las opciones anteriores se realizan es porque es una opcion incorecta por lo que 
					//        Se vulve a mostar el menu al usuario con un nuevo mensaje 
					Limpiar Pantalla
					
					si contador == 6//Ver�fica cuantas veces te has equivocado y te env�a un mensaje diferente seg�n cuantos errores sean 
						Escribir Name_User," Te has equivocado varias veces recuerda que las opciones correctas son A, B, C o D"
						Escribir ""
						Escribir ""
					sino 
						si contador == 10 //Ver�fica cuantas veces te has equivocado y te env�a un mensaje diferente seg�n cuantos errores sean 
							Escribir "Recuerda las opciones son �nicamente A, B, C o D ;)"
							Escribir ""
							Escribir ""
						sino 
							si contador > 12//Ver�fica cuantas veces te has equivocado y te env�a un mensaje diferente seg�n cuantos errores sean 
								Escribir Name_User," las opciones son �nicamente A, B, C o D"
								Escribir ""
							FinSi
							
						FinSi
					FinSi
					Escribir Name_User," la opci�n (",opcion_menu,") no es V�LIDA Ingrese una opci�n correcta"
					escribir "A. Cuadrado"
					escribir "B. Encriptador"
					escribir "C. Conversor de base"
					escribir "D. Salir"
					Leer opcion_menu
					contador = contador + 1
			Fin Segun
		FinMientras
	FinMientras
FinFuncion
Funcion Exit <- Cuadrado // Si la opci�n que se ingres� es A se llama a esta funci�n 
	//Se definen las variables
	Definir option Como Caracter
	Definir Exit Como Entero
	Limpiar Pantalla
	//Se escribe el mensaje al usuario y se le dan dos opciones a realizar 
	Escribir "Opci�n CUADRADO esta en contruccion"," Lo siento :("
	Escribir "____________________________________________________"
	Escribir ""
	Escribir "Ingrese A o B"
	Escribir "A. Menu"
	Escribir "B. Salir"
	leer option // Se lee elecci�n del usuario 
	
	
	//Se verifica que la opci�n ingresada sea correcta
	option = Verificador(option)
	
	si option =="A" o option == "a" // si la opcion elegida por el usuaio es a o A se limpia la pantala y se termina la funcion
		Limpiar Pantalla
	sino 
		Escribir "Gracias por usar el progrma" //La opci�n elegida por el usuario es salir por lo que se le agradece 
		Exit = salida// Se le da a exit valor de 1 este valor se le devuelve a la funci�n men� lo que hace que no se vuelva a escribir
		//         el men� principal y se termina el programa
	FinSi
	

FinFuncion
	
Funcion Exit <- Encriptador// Si la opci�n que se ingres� es B se llama a esta funci�n 
	//Se definen las variables
	Definir option Como Caracter
	Definir Exit Como Entero
	Limpiar Pantalla
	//Se escribe el mensaje al usuario y se le dan dos opciones a realizar 
	Escribir "Opcion Encriptador esta en contruccion"," Lo siento :("
	Escribir "____________________________________________________"
	Escribir ""
	Escribir "Ingrese A o B"
	Escribir "A. Menu"
	Escribir "B. Salir"
	leer option // Se lee elecci�n del usuario 
	//Se verifica que la opci�n ingresada sea correcta
	option = Verificador(option)
	si option =="A" o option == "a"// si la opcion elegida por el usuaio es a o A se limpia la pantala y se termina la funcion
		Limpiar Pantalla
	sino 
		
		Escribir "Gracias por usar el progrma" //La opci�n elegida por el usuario es salir por lo que se le agradece 
		Exit = salida// Se le da a exit valor de 1 este valor se le devuelve a la funci�n men� lo que hace que no se vuelva a escribir
		//         el men� principal y se termina el programa
		
	FinSi
FinFuncion

Funcion Exit <- Conversor_de_base // Si la opci�n que se ingres� es C se llama a esta funci�n 
	//Se definen las variables
	Definir option Como Caracter
	Definir Exit Como Entero
	Limpiar Pantalla
	//Se escribe el mensaje al usuario y se le dan dos opciones a realizar 
	Escribir "Opcion CONVERTIDOR DE BASE esta en contruccion"," Lo siento :("
	Escribir "______________________________________________________________"
	Escribir ""
	Escribir "Ingrese A o B"
	Escribir "A. Menu"
	Escribir "B. Salir"
	leer option // Se lee la nueva opci�n del usuario
	//Se verifica que la opci�n ingresada sea correcta
	option = Verificador(option)
	si option =="A" o option == "a"// si la opcion elegida por el usuaio es a o A se limpia la pantala y se termina la funcion
		
		Limpiar Pantalla
	sino 
		Escribir "Gracias por usar el progrma"//La opci�n elegida por el usuario es salir por lo que se le agradece 
		Exit = salida// Se le da a exit valor de 1 este valor se le devuelve a la funci�n men� lo que hace que no se vuelva a escribir
		//el men� principal y se termina el programa
	FinSi
FinFuncion
Funcion Exit <- salida // Si la opci�n que se ingres� es A se llama a esta funci�n 
	Limpiar Pantalla
	//Se escribe el mensaje al usuario y se le dan dos opciones a realizar 
	Escribir "Muchas gracias por usar nuestro programa,vuelva pronto"
	Exit = 1
FinFuncion 
Funcion option <- Verificador(option)//Esta funcion verifica si la opcion ingresada de los menus es valida o no
	option = Mayusculas(option)//convierte el input en mayuscula para poder comprobar de manera mas facil
	
	Mientras (option <> "A") y (option <> "B")//comprueba que solo se hayan ingresado esas opciones
		Limpiar Pantalla
		Escribir "Ingrese una opcion correcta"// Escribe el men� con un nuevo mensaje indicando que s� ha equivocado
		Escribir "Ingrese A o B"
		Escribir "A. Menu"
		Escribir "B. Salir"
		leer option // Se lee la nueva opci�n del usuario
	FinMientras
FinFuncion
	