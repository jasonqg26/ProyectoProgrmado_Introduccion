// Es un menú con diversas funciones que todavia se encuentran en construcción
//Jason Quesada Gómez. C36213
//Fabián Quesada Cordero. C36202 
//17/5/2023
//Version 0.1

Algoritmo Proyecto_programado
	
	User //Invocamos a la función User y guardamos el nombre del usuario
	

FinAlgoritmo

Funcion User //Presentamos a los creadores del algoritmo
	Definir Name_User como caracter // Definimos la variable  

	Escribir "Proyecto del curso IF1300 Introducción a la computación e informática"
	Escribir "Programadores: Fabián Quesada Cordero y Jason Quesada Gómez "
	Escribir "Ingrese su nombre de usuario: "
	leer Name_User
	Limpiar Pantalla // Se limpia lo anterior
	
	Escribir "Te damos la bienvenida a nuestro programa ", Name_User // Le damos la bienvenida al usuario

	menu(Name_User) // Llamamos a la función menú 
FinFuncion


Funcion menu(Name_User) //Permite al usuario elegir una opción con la que desea trabajar
	Definir revision,contador Como Entero
	Definir opcion_menu Como Caracter
	Definir Exit Como Logico
	
	Exit = Falso
	
	Mientras Exit == Falso // Iniciamos el ciclo del menú solo si salir es 0
		
		Limpiar Pantalla
		//Escribir en consola el menú principal
		Escribir "*************************** Menú Principal *****************************"
		escribir "A. Cuadrado"
		escribir "B. Encriptador"
		escribir "C. Conversor de base"
		escribir "D. Salir"
		Leer opcion_menu //Se guarda la opcion que ingreso el usuario en la variable 
		
		
		Segun opcion_menu Hacer //Según lo que el usuario haya introducido se realiza una acción 
			"a","A":
				Exit = Cuadrado
			"b","B":
				Exit = Encriptador//, Se llama a la función Encriptador,La funcion Encriptador manda un valor
				//                 ya sea 0 si no se quiere salir o 1 si se quire salir 
			"c","C":
				Exit = Conversor_de_base//Se llama a la función Conversor_de_base, La función Cuadrado manda un valor
				//                       ya sea 0 si no se quiere salir o 1 si se quire salir 
			"d","D":
				Exit = Verdadero// Se eligio la opcion salir por lo que exir es 1 para que no se repita el ciclo de menu principal 
				
			De Otro Modo://Si ninguna de las opciones anteriores se realizan es porque es una opcion incorecta por lo que 
				//        Se vulve a mostar el menu al usuario con un nuevo mensaje 
				Limpiar Pantalla
				
				si contador == 6//Verífica cuantas veces te has equivocado y te envía un mensaje diferente según cuantos errores sean 
					Escribir Name_User," Te has equivocado varias veces recuerda que las opciones correctas son A, B, C o D"
					Escribir ""
					Escribir ""
				sino 
					si contador == 10 
						Escribir "Recuerda las opciones son únicamente A, B, C o D ;)"
						Escribir ""
						Escribir ""
					sino 
						si contador > 12
							Escribir Name_User," las opciones son únicamente A, B, C o D"
							Escribir ""
						FinSi
						
					FinSi
				FinSi
				
				Escribir Name_User," la opción (",opcion_menu,") no es VÁLIDA Ingrese una opción correcta"
				escribir "A. Cuadrado"
				escribir "B. Encriptador"
				escribir "C. Conversor de base"
				escribir "D. Salir"
				Leer opcion_menu
				contador = contador + 1
				
			Fin Segun
		FinMientras
		
		Limpiar Pantalla
		Escribir "Gracias por usar el Programa"
		Esperar 2 Segundos
		
FinFuncion


Funcion Exit <- Cuadrado
	Limpiar Pantalla

	Definir option,n,letras Como Caracter
	Definir Exit como logico
	Definir i,j Como Entero
	
	letras = "abcdefghijklmnñopqrstuvwxyz"
	
	i = 1
	j = 1
	Exit = Falso
	option = "b"
	
	
	Mientras option == "b"
		Limpiar Pantalla
		Escribir "Ingrese el número que quiere elevar al cuadrado"
		leer n
		n = Minusculas(n)
		Es_str = Falso
		i = 1
		
		Mientras i < 27 
			
			comparacion = SubCadena(letras,i, i)
			
			j = 1
			
			Mientras j <= Longitud(n)
				
				si comparacion == SubCadena(n,j,j)
					Es_str = Verdadero
				FinSi
				
				J = J + 1
				
			FinMientras
			i = i + 1
		FinMientras
		
		si Es_str == Falso
			u = ConvertirANumero(n)
			Escribir calculaPotencia(u)
			option  = mini_menú("Cuadrado")
		sino 
			Escribir "El caracter (", n, ") no es valido "
			Escribir "Solo se permiten numeros"
			Escribir ""
			Esperar 2 segundos
			Limpiar Pantalla
		FinSi
		
	
	fin mientras 
	
	
	Si option = "a"
		Exit = Falso
		Limpiar Pantalla
	sino 
		Exit = Verdadero
		Limpiar Pantalla
	FinSi
	
	
	
FinFuncion

Funcion mostrarPotencia <- calculaPotencia(n) // Si la opción que se ingresó es A se llama a esta función 
	
	Definir option,mostrarPotencia Como Caracter
	Limpiar Pantalla
	im = 1
	i = 0
	pot=0
	
	Mientras i < n Hacer
		pot = im + pot
		i = i + 1
		si i == n Entonces
			mostrarPotencia = mostrarPotencia + ConvertirATexto(im) + " = " + ConvertirATexto(pot)
		sino 
			mostrarPotencia = mostrarPotencia + ConvertirATexto(im) + " + "
		FinSi
		im = im + 2
	FinMientras
	
FinFuncion

Funcion Exit <- Encriptador// Si la opción que se ingresó es B se llama a esta función 
    //Se definen las variables
    Definir option Como Caracter

    Limpiar Pantalla
    option = mini_menú("Encriptador")
	Si option = "a"
		Exit = Falso
		Limpiar Pantalla
	sino 
		Exit = Verdadero
		Limpiar Pantalla
	FinSi
	
FinFuncion

Funcion Exit <- Conversor_de_base // Si la opción que se ingresó es C se llama a esta función 
    //Se definen las variables
    Definir option Como Caracter

    Limpiar Pantalla
    //Se escribe el mensaje al usuario y se le dan dos opciones a realizar 
    option = mini_menú("Conversor de base")
	
	Si option = "a"
		Exit = Falso
		Limpiar Pantalla
	sino 
		Exit = Verdadero
		Limpiar Pantalla
	FinSi
	
	
	
FinFuncion

Funcion option <- mini_menú(Nombre_algoritmo) // se crea una funcion de un mini menu adentro de cada función del menu principal
	// se definen las variables 
	Definir option Como Caracter
	//Se escribe el mensaje al usuario y se le dan dos opciones a realizar 
	Escribir "Función ",Nombre_algoritmo," ha finalizado"
	Escribir "____________________________________________________"
	Escribir ""
	Escribir "A.Volver al menu"
	
	
	
	si Nombre_algoritmo == "Cuadrado"
		Escribir "B.Volver a intentar"
	FinSi
	
	
	Escribir "S.Salir"
	leer option // Se lee elección del usuario 
	option = Minusculas(option) 
	
	
	Mientras option <> "a" y option <> "b" y option <> "s"
		Limpiar Pantalla
        Escribir "La opcion (",option,") ingrese una opcion correcta"
        Escribir "Ingrese A o B o S"
        Escribir "A.Menu"
		
		si Nombre_algoritmo == "Cuadrado"
			Escribir "B.Volver a intentar"
		FinSi
		
        Escribir "S.Salir"
        leer option// Se lee la nueva opción del usuario
		option = Minusculas(option) 
	FinMientras
	
	
FinFuncion
	