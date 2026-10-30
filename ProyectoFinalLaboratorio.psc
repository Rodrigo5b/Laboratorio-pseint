Algoritmo ProyectoFinalLaboratorio
    Definir opcionPrincipal, opcionJuego Como Entero
    Definir partidasIniciadas, partidasTruco, partidasLudo, partidasNaval Como Entero
    Definir salir Como Logico
    partidasIniciadas <- 0
    partidasTruco <- 0
    partidasLudo <- 0
    partidasNaval <- 0
    opcionPrincipal <- 0
    opcionJuego <- 0
    salir <- Falso
    Repetir
     opcionPrincipal<-menuPrincipal 
        Segun opcionPrincipal Hacer
            1:
                opcionJuego<- seleccionDeJuego
                Segun opcionJuego Hacer
                    1:
                        partidasIniciadas <- partidasIniciadas + 1
                        partidasTruco <- partidasTruco + 1
                        EjecutarTruco
                    2:
                        partidasIniciadas <- partidasIniciadas + 1
                        partidasLudo <- partidasLudo + 1
                        EjecutarLudo
                    3:
                        partidasIniciadas <- partidasIniciadas + 1
                        partidasNaval <- partidasNaval + 1
                        EjecutarBatallaNaval
                    4:
                        Escribir "Volviendo al menu principal..."
                    De Otro Modo:
                        Escribir "Opcion invalida."
                        Esperar Tecla
                FinSegun
            2:
                Borrar Pantalla
                Escribir "============= ESTADISTICAS ============="
                Escribir "Partidas iniciadas: ", partidasIniciadas," veces."
                Escribir "Se jugo al Truco: ", partidasTruco," veces."
                Escribir "Se jugo al Ludo: ", partidasLudo," veces."
                Escribir "Se jugo a la Batalla Naval: ", partidasNaval," veces."
                Escribir ""
                Escribir "Nota: se cuentan inicios, no victorias."
                Esperar Tecla
            3:
                Borrar Pantalla
                Escribir "============= INFORMACION ============="
                Escribir " Somos Ramiro, Sebastian y Rodrigo"
                Escribir ""
                Escribir "Creamos para este proyecto un arcade llamado TripleVerse con tres juegos el LUDO, el TRUCO y LA BATALLA NAVAL:"
                Escribir ""
                Escribir "Creamos en conjunto un sistema con menu selectivos para entrar a jugar, ver estadisticas de juego, la informacion de nuestro trabajo y una opcion de salida."
                Escribir ""
                Escribir "Se crearon los tres juegos con su menu interno con la opcion de volver al menu principal de TRIPLEVERSE, los juegos pueden jugarse individualmente contra la cpu de cada juego"
                Escribir ""
                Escribir "En el caso del ludo pueden jugar hasta 4 jugadores en simultaneo local, mientras en el truco y la batalla naval estan pensados para jugar unicamente contra la cpu con sus "
                Escribir ""
                Escribir "respectivos niveles de inteligencia."
                Escribir""
                Escribir "Esperamos que les guste el proyecto. Gracias por probarlo."
                Escribir "Presione una tecla para volver..."
                Esperar Tecla
            0:
                salir <- Verdadero
                Borrar Pantalla
                Escribir "Gracias por jugar. Hasta la proxima!"
            De Otro Modo:
                Escribir "Opcion invalida. Ingrese un numero del 0 al 3."
                Esperar Tecla
        FinSegun
    Hasta Que salir
FinAlgoritmo

Funcion menu<- menuPrincipal 
Definir menu,in como Entero
Borrar Pantalla
    Escribir "   ________          __            __           __     __   "
    Escribir "  |        \        |  \          |  \         |  \   |  \  "
    Escribir "   \$$$$$$$$______   \$$  ______  | $$  ______ | $$   | $$  ______    ______    _______   ______ "
    Escribir "     | $$  /      \ |  \ /      \ | $$ /      \| $$   | $$ /      \  /      \  /       \ /      \"
    Escribir "     | $$ |  $$$$$$\| $$|  $$$$$$\| $$|  $$$$$$\\$$\ /  $$|  $$$$$$\|  $$$$$$\|  $$$$$$$|  $$$$$$\"
    Escribir "     | $$ | $$   \$$| $$| $$  | $$| $$| $$    $$ \$$\  $$ | $$    $$| $$   \$$ \$$    \ | $$    $$"
    Escribir "     | $$ | $$      | $$| $$__/ $$| $$| $$$$$$$$  \$$ $$  | $$$$$$$$| $$       _\$$$$$$\| $$$$$$$$"
    Escribir "     | $$ | $$      | $$| $$    $$| $$ \$$     \   \$$$    \$$     \| $$      |       $$ \$$     \"
    Escribir "     | $$ | $$      | $$| $$    $$| $$ \$$     \   \$$$    \$$     \| $$      |       $$ \$$     \"
    Escribir "      \$$  \$$       \$$| $$$$$$$  \$$  \$$$$$$$    \$      \$$$$$$$ \$$       \$$$$$$$   \$$$$$$$"
    Escribir "                        | $$ "
    Escribir "                        | $$ "
    Escribir"                          \$$ "
    Escribir " "
    Escribir " "
    Escribir "                        1                         "
    Escribir "                  -------------                   "
    Escribir "                 |    INICIO   |                  "
    Escribir "                  -------------                   "
    Escribir " "
    Escribir "                        2                         " 
    Escribir "                  --------------                  "
    Escribir "                 | ESTADISTICAS |                 "
    Escribir "                  --------------                  "
    Escribir " "
    Escribir "                        3                         " 
    Escribir "                  -------------                   "
    Escribir "                 | INFORMACION |                  "
    Escribir "                  -------------                   "
    Escribir " "
    Escribir "                        0                         " 
    Escribir "                  -------------                   "
    Escribir "                 |    SALIR    |                  "
    Escribir "                  -------------                   "
    Escribir " "
    Escribir " SELECCIONA UNA DE LAS OPCIONES PARA EMPEZAR A JUGAR O VOLVER AL MENU INICIAL.(1-2-3-0) "
    Escribir " "
    Leer in
Borrar Pantalla
Mientras in <0 o in >3 hacer
    Escribir "   ________          __            __           __     __   "
    Escribir "  |        \        |  \          |  \         |  \   |  \  "
    Escribir "   \$$$$$$$$______   \$$  ______  | $$  ______ | $$   | $$  ______    ______    _______   ______ "
    Escribir "     | $$  /      \ |  \ /      \ | $$ /      \| $$   | $$ /      \  /      \  /       \ /      \"
    Escribir "     | $$ |  $$$$$$\| $$|  $$$$$$\| $$|  $$$$$$\\$$\ /  $$|  $$$$$$\|  $$$$$$\|  $$$$$$$|  $$$$$$\"
    Escribir "     | $$ | $$   \$$| $$| $$  | $$| $$| $$    $$ \$$\  $$ | $$    $$| $$   \$$ \$$    \ | $$    $$"
    Escribir "     | $$ | $$      | $$| $$__/ $$| $$| $$$$$$$$  \$$ $$  | $$$$$$$$| $$       _\$$$$$$\| $$$$$$$$"
    Escribir "     | $$ | $$      | $$| $$    $$| $$ \$$     \   \$$$    \$$     \| $$      |       $$ \$$     \"
    Escribir "     | $$ | $$      | $$| $$    $$| $$ \$$     \   \$$$    \$$     \| $$      |       $$ \$$     \"
    Escribir "      \$$  \$$       \$$| $$$$$$$  \$$  \$$$$$$$    \$      \$$$$$$$ \$$       \$$$$$$$   \$$$$$$$"
    Escribir "                        | $$ "
    Escribir "                        | $$ "
    Escribir"                          \$$ "
    Escribir " "
    Escribir " "
    Escribir "                        1                         "
    Escribir "                  -------------                   "
    Escribir "                 |    INICIO   |                  "
    Escribir "                  -------------                   "
    Escribir " "
    Escribir "                        2                         " 
    Escribir "                  --------------                  "
    Escribir "                 | ESTADISTICAS |                 "
    Escribir "                  --------------                  "
    Escribir " "
    Escribir "                        3                         " 
    Escribir "                  -------------                   "
    Escribir "                 | INFORMACION |                  "
    Escribir "                  -------------                   "
    Escribir " "
    Escribir "                        0                         " 
    Escribir "                  -------------                   "
    Escribir "                 |    SALIR    |                  "
    Escribir "                  -------------                   "
    Escribir " "
    Escribir " SELECCIONA UNA DE LAS OPCIONES PARA EMPEZAR A JUGAR O VOLVER AL MENU INICIAL.(1-2-3-0) "
    Escribir " "
    Leer in
FinMientras
menu<-in
FinFuncion
Funcion juego <- seleccionDeJuego

	Definir opcionMenu, juego como entero
	Repetir
		Borrar Pantalla
		Escribir "========== SELECCION DE JUEGO =========="
		Escribir "1. Truco"
		Escribir "2. Ludo"
		Escribir "3. Batalla naval"
		Escribir "4. Volver al menu principal"
		Escribir "Seleccione un juego:"
		Leer opcionMenu	
	Mientras Que opcionMenu<1 o opcionMenu>4
	juego<-opcionMenu
FinFuncion

SubProceso EjecutarTruco
    Definir pMaximos, pJugador, pCPU, mazoIdx, dificultadCPU, manoInicial, opcionMenu Como Entero
    Definir nros, jers, envs, jNros, jJers, jEnvs, cNros, cJers, cEnvs Como Entero
    Definir palos, jPalos, cPalos Como Caracter
    Dimension nros[40], palos[40], jers[40], envs[40]
    Dimension jNros[3], jPalos[3], jJers[3], jEnvs[3]
    Dimension cNros[3], cPalos[3], cJers[3], cEnvs[3]
    
    pMaximos <- 15
    mazoIdx <- 0
    Repetir
        pJugador <- 0
        pCPU <- 0
        manoInicial <- Azar(2)
        opcionMenu <- MostrarMenuPrincipalTruco(opcionMenu)
        Segun opcionMenu Hacer
            1:
                ConfigurarPartida(pMaximos)
                dificultadCPU <- SeleccionarDificultadCPU()
                
                Mientras pJugador < pMaximos Y pCPU < pMaximos Hacer
                    CrearMazo(nros, palos, jers, envs)
                    Barajar(nros, palos, jers, envs)
                    mazoIdx <- 0
                    Repartir(nros, palos, jers, envs, jNros, jPalos, jJers, jEnvs, cNros, cPalos, cJers, cEnvs, mazoIdx)
                    JugarRonda(jNros, jPalos, jJers, jEnvs, cNros, cPalos, cJers, cEnvs, pJugador, pCPU, pMaximos, dificultadCPU, manoInicial)
                    manoInicial <- 1 - manoInicial
                FinMientras
                MostrarFinPartida(pJugador, pCPU, pMaximos)
                
            2:
                MostrarReglas
                
            3:
                Escribir "Saliendo..."
                Esperar Tecla
                
            De Otro Modo:
                Escribir "Opcion invalida."
                Esperar 1 Segundos
        FinSegun
    Hasta Que opcionMenu = 3
FinSubProceso
SubProceso EjecutarLudo
    Definir MIN_JUGADORES, MAX_JUGADORES, POSICION_META Como Entero
    Definir cantidadJugadores, i, p, modoDeJuego Como Entero
    Definir juegoActivo Como Logico
    Definir tablero Como Caracter
    Dimension tablero[15, 15]
    
    Definir posicionTabla Como Entero
    Definir estadoFicha Como Logico
	Dimension posicionTabla[5, 5]
	Dimension estadoFicha[5, 5]
	
    MIN_JUGADORES <- 2
    MAX_JUGADORES <- 4
    POSICION_META <- 57
    juegoActivo <- Verdadero
    cantidadJugadores <- 0
    
	Para i <- 1 Hasta 4 Hacer
		Para p <- 1 Hasta 4 Hacer
			estadoFicha[i, p] <- Falso
			posicionTabla[i, p] <- 0
		FinPara
    FinPara
    
    Borrar Pantalla
    
    modoDeJuego <- llamarModoDeJuego
    
    Si modoDeJuego = 1 Entonces
        Escribir "Modo vs PC seleccionado."
        Esperar Tecla
        cantidadJugadores <- 2
        EjecutarBucleJuego(cantidadJugadores, POSICION_META, juegoActivo, tablero, posicionTabla, estadoFicha, Verdadero)
    FinSi
    
    Si modoDeJuego = 2 Entonces
        cantidadJugadores <- leerEnteroEntre(MIN_JUGADORES, MAX_JUGADORES, "Elija la cantidad de jugadores [2] [3] [4]")
        EjecutarBucleJuego(cantidadJugadores, POSICION_META, juegoActivo, tablero, posicionTabla, estadoFicha, Falso)
    FinSi
    
    Si modoDeJuego = 3 Entonces
        Escribir "Ha elegido volver al menu principal!"
        Esperar Tecla
        Borrar Pantalla
    FinSi
FinSubProceso

SubProceso EjecutarBatallaNaval
    Definir modo1, tamanioTablero Como Entero
    Definir resultadoNaval Como Entero
    tamanioTablero <- 10
    modo1 <- 0
    resultadoNaval <- 0
    MostrarPortada
    resultadoNaval <- Jugar(modo1, tamanioTablero)
FinSubProceso

Funcion dificultad <- SeleccionarDificultadCPU
    Definir dificultad Como Entero
    Borrar Pantalla
    Escribir "========== DIFICULTAD DE LA CPU =========="
    Escribir "1. Principiante: juega casi al azar y canta poco"
    Escribir "2. Facil: prioriza cartas razonables"
    Escribir "3. Dificil: calcula respuestas y conserva cartas fuertes"
    Escribir "4. Experta: responde con la carta minima que gana y evalua apuestas"
    Repetir
        Escribir "Seleccione dificultad (1-4):"
        Leer dificultad
    Hasta Que dificultad >= 1 Y dificultad <= 4
FinFuncion

// --- NUEVO SUBPROCESO: MOSTRAR FIN DE PARTIDA ---
SubProceso MostrarFinPartida(pJugador, pCPU, pMaximos)
    Borrar Pantalla
    Escribir "================================================="
    Escribir "               FIN DE LA PARTIDA"
    Escribir "================================================="
    Si pJugador >= pMaximos Entonces
        Escribir "FELICIDADES! ERES EL GANADOR ABSOLUTO"
    Sino
        Escribir "LA CPU TE HA DERROTADO. SUERTE LA PROXIMA."
    FinSi
    Escribir "Puntaje Final -> Jugador: ", pJugador, " | CPU: ", pCPU
    Escribir "Presione una tecla para volver al menu..."
    Esperar Tecla
FinSubProceso

SubProceso DibujarCartasOcultasCPU
    Definir i Como Entero
    Para i <- 0 Hasta 2 Hacer
        Escribir Sin Saltar "+-------+   "
    FinPara
    Escribir ""
    Para i <- 0 Hasta 2 Hacer
        Escribir Sin Saltar "|  ??   |   "
    FinPara
    Escribir ""
    Para i <- 0 Hasta 2 Hacer
        Escribir Sin Saltar "|  ??   |   "
    FinPara
    Escribir ""
	Para i <- 0 Hasta 2 Hacer
        Escribir Sin Saltar "|  ??   |   "
    FinPara
	Escribir ""
    Para i <- 0 Hasta 2 Hacer
        Escribir Sin Saltar "+-------+   "
    FinPara
    Escribir ""
FinSubProceso

Funcion abrev <- ObtenerAbrevPalo(palo)
    Definir abrev Como Caracter
    abrev <- "   "
    Si palo = "Espada" Entonces 
        abrev <- "Esp" 
    FinSi
    Si palo = "Basto" Entonces 
        abrev <- "Bas" 
    FinSi
    Si palo = "Oro" Entonces 
        abrev <- "Oro" 
    FinSi
    Si palo = "Copa" Entonces 
        abrev <- "Cop" 
    FinSi
FinFuncion

SubProceso DibujarMesaHistorialGrafico(hJNros Por Referencia, hJPalos Por Referencia, hCNros Por Referencia, hCPalos Por Referencia)
    Definir b Como Entero
    Escribir ""
    Escribir "|                               ---     PARTIDA     ---                                  |"
    Escribir ""
    Escribir "             MANO 1                       MANO 2                       MANO 3           "
    Escribir "        "
	
    // Fila 1: Borde superior
    Para b <- 0 Hasta 2 Hacer
        Si hJNros[b] <> 0 Entonces 
            Escribir Sin Saltar "+-------+ " 
        Sino 
            Escribir Sin Saltar "          " 
        FinSi
        Si hCNros[b] <> 0 Entonces 
            Escribir Sin Saltar "+-------+    " 
        Sino 
            Escribir Sin Saltar "             " 
        FinSi
    FinPara
    Escribir ""
	
    // Fila 2: Numero superior
    Para b <- 0 Hasta 2 Hacer
        Si hJNros[b] <> 0 Entonces
            Si hJNros[b] < 10 Entonces 
                Escribir Sin Saltar "| ", hJNros[b], "     | " 
            Sino 
                Escribir Sin Saltar "| ", hJNros[b], "    | " 
            FinSi
        Sino 
            Escribir Sin Saltar "          " 
        FinSi
        Si hCNros[b] <> 0 Entonces
            Si hCNros[b] < 10 Entonces 
                Escribir Sin Saltar "| ", hCNros[b], "     |    " 
            Sino 
                Escribir Sin Saltar "| ", hCNros[b], "    |    " 
            FinSi
        Sino 
            Escribir Sin Saltar "             " 
        FinSi
    FinPara
    Escribir ""
	
    // Fila 3: Palo abreviado
    Para b <- 0 Hasta 2 Hacer
        Si hJNros[b] <> 0 Entonces 
            Escribir Sin Saltar "|  ", ObtenerAbrevPalo(hJPalos[b]), "  | " 
        Sino 
            Escribir Sin Saltar "          " 
        FinSi
        Si hCNros[b] <> 0 Entonces 
            Escribir Sin Saltar "|  ", ObtenerAbrevPalo(hCPalos[b]), "  |    " 
        Sino 
            Escribir Sin Saltar "             " 
        FinSi
    FinPara
    Escribir ""
	
    // Fila 4: Borde inferior
    Para b <- 0 Hasta 2 Hacer
        Si hJNros[b] <> 0 Entonces 
            Escribir Sin Saltar "+-------+ " 
        Sino 
            Escribir Sin Saltar "          " 
        FinSi
        Si hCNros[b] <> 0 Entonces 
            Escribir Sin Saltar "+-------+    " 
        Sino 
            Escribir Sin Saltar "             " 
        FinSi
    FinPara
    Escribir ""
    Escribir "----------------------------------------------------------------------------------------"
FinSubProceso

SubProceso DibujarCartasJugadorGrande(nros Por Referencia, palos Por Referencia, disp Por Referencia)
    Definir i Como Entero
    
    Escribir "          [ 1 ]               [ 2 ]               [ 3 ]"
    
    Para i <- 0 Hasta 2 Hacer
        Si disp[i] = 1 Entonces 
            Escribir Sin Saltar "        +-------+   " 
        Sino 
            Escribir Sin Saltar "              " 
        FinSi
    FinPara
    Escribir ""
    
    Para i <- 0 Hasta 2 Hacer
        Si disp[i] = 1 Entonces
            Si nros[i] < 10 Entonces
                Escribir Sin Saltar "        | ", nros[i], "     |   "
            Sino
                Escribir Sin Saltar "        | ", nros[i], "    |   "
            FinSi
        Sino
            Escribir Sin Saltar "            "
        FinSi
    FinPara
    Escribir "   "
    
    Para i <- 0 Hasta 2 Hacer
        Si disp[i] = 1 Entonces
            Escribir Sin Saltar "        |  ", ObtenerAbrevPalo(palos[i]), "  |   " 
        Sino
            Escribir Sin Saltar "            "
        FinSi
    FinPara
    Escribir "    "
    
    Para i <- 0 Hasta 2 Hacer
        Si disp[i] = 1 Entonces
            Si nros[i] < 10 Entonces
                Escribir Sin Saltar "        |    ", nros[i], "  |   "
            Sino
                Escribir Sin Saltar "        |   ", nros[i], "  |   "
			FinSi
		FinSi
		Escribir ""
		
		Para i <- 0 Hasta 2 Hacer
			Si disp[i] = 1 Entonces 
				Escribir Sin Saltar "        +-------+   " 
			Sino 
				Escribir Sin Saltar "            " 
			FinSi
		FinPara
		Escribir " "
	FinPara
FinSubProceso


Funcion opcion <- MostrarMenuPrincipalTruco(opcionMenu Por Referencia)
	definir opcion como entero
    opcionMenu <- 0
    Borrar Pantalla
    Escribir "   -  "
    Escribir "  |  \  "
    Escribir " _| $$_     ______   __    __   _______   ______"
    Escribir "|   $$ \   /      \ |  \  |  \ /       \ /      \ "
    Escribir " \$$$$$$  |  $$$$$$\| $$  | $$|  $$$$$$$|  $$$$$$\"
    Escribir "  | $$ __ | $$   \$$| $$  | $$| $$      | $$  | $$"
    Escribir "  | $$|  \| $$      | $$__/ $$| $$_____ | $$__/ $$"
    Escribir "   \$$  $$| $$       \$$    $$ \$$     \ \$$    $$"
    Escribir "    \$$$$  \$$        \$$$$$$   \$$$$$$$  \$$$$$$ "
    Escribir " "
    Escribir " "
    Escribir "                        1                         "
    Escribir "                  -------------                   "
    Escribir "                 |    JUGAR    |                  "
    Escribir "                  -------------                   "
    Escribir " "
    Escribir "                        2                         " 
    Escribir "                  -------------                   "
    Escribir "                 |    REGLAS   |                  "
    Escribir "                  -------------                   "
    Escribir " "
    Escribir "                        3                         " 
    Escribir "                  -------------                   "
    Escribir "                 |    SALIR    |                  "
    Escribir "                  -------------                   "
    Escribir " "
    Escribir " SELECCIONA UNA DE LAS OPCIONES PARA EMPEZAR A JUGAR O VOLVER AL MENU INICIAL.(1-2-3) "
    Escribir " "
    Leer opcionMenu
    Borrar Pantalla
    Mientras opcionMenu<1 o opcionMenu>3 Hacer
        Escribir "   -  "
        Escribir "  |  \  "
        Escribir " _| $$_     ______   __    __   _______   ______"
        Escribir "|   $$ \   /      \ |  \  |  \ /       \ /      \ "
        Escribir " \$$$$$$  |  $$$$$$\| $$  | $$|  $$$$$$$|  $$$$$$\"
        Escribir "  | $$ __ | $$   \$$| $$  | $$| $$      | $$  | $$"
        Escribir "  | $$|  \| $$      | $$__/ $$| $$_____ | $$__/ $$"
        Escribir "   \$$  $$| $$       \$$    $$ \$$     \ \$$    $$"
        Escribir "    \$$$$  \$$        \$$$$$$   \$$$$$$$  \$$$$$$ "
        Escribir " "
        Escribir " "
        Escribir "                        1                         "
        Escribir "                  -------------                   "
        Escribir "                 |    JUGAR    |                  "
        Escribir "                  -------------                   "
        Escribir " "
        Escribir "                        2                         " 
        Escribir "                  -------------                   "
        Escribir "                 |    REGLAS   |                  "
        Escribir "                  -------------                   "
        Escribir " "
        Escribir "                        3                         " 
        Escribir "                  -------------                   "
        Escribir "                 |    SALIR    |                  "
        Escribir "                  -------------                   "
        Escribir " "
        Escribir " SELECCIONA UNA DE LAS OPCIONES NUEVAMENTE. QUE SEAN UNA DE LAS DADAS (1-2-3) POR FAVOR. "
        Escribir " "
        Leer opcionMenu
        Borrar Pantalla
    FinMientras
	opcion<- opcionMenu
FinFuncion

SubProceso MostrarReglas
    Definir opcion Como Entero
    Repetir
        Borrar Pantalla
        Escribir "=== REGLAS DEL TRUCO ==="
        Escribir "1. Generales y Valores"
        Escribir "2. Volver"
        Escribir "Seleccione una opcion:"
        Leer opcion
        Si opcion = 1 Entonces
            InformacionDelTruco
            Escribir ""
            Escribir "Presiona cualquier tecla para continuar..."
            Esperar Tecla
        FinSi
    Hasta Que opcion = 2
FinSubProceso

SubProceso ComoSeJuega
    Escribir "El objetivo es llegar a la cantidad de puntos acordada (15 o 30 puntos)"
    Escribir "Se juega con 40 cartas espanolas"
    Escribir Sin Saltar "Se usan los numeros: 1, 2, 3, 4, 5, 6, 7, 10, 11 y 12."
    Escribir "No se utilizan los 8 ni 9."
    Escribir Sin Saltar "Los palos son: Espada, Basto, Oro y Copa."
    Escribir ""
    Escribir "Cada jugador recibe 3 cartas y se juegan hasta 3 manos."
    Escribir "Los puntos se consiguen principalmente mediante estas manos,"
    Escribir Sin Saltar "los jugadores pueden cantar envido o truco para sumar mas puntos mediante las manos"
    Escribir ""
FinSubProceso

SubProceso ValoresDelTruco
    Escribir "El valor de las cartas para determinar quien gana una mano"
    Escribir "En el juego las cartas siguen el siguiente valor."
    Escribir "1 de Espada > 1 de Basto > 7 de Espada > 7 de Oro > 3 > 2 > 1 de Copa/Oro "
    Escribir Sin Saltar "> 12 > 11 > 10 > 7 de Basto/Copa > 6 > 5 > 4."
    Escribir ""
    Escribir "El jugador o equipo que gana 2 de las 3 manos gana el Truco."
    Escribir ""
    Escribir "VALORES DEL TRUCO"
    Escribir "| Apuesta     | Si se gana | "
    Escribir "| ----------- | ---------: |"
    Escribir "| Sin Truco   |    1 punto |"
    Escribir "| Truco       |   2 puntos |"
    Escribir "| Retruco     |   3 puntos |"
    Escribir "| Vale Cuatro |   4 puntos |"
    Escribir ""
FinSubProceso

Subproceso ValoresDelEnvido
    Escribir "ENVIDO"
    Escribir ""
    Escribir "Se puede cantar antes de jugar la primera carta"
    Escribir Sin Saltar "Y si es en equipo lo pueden cantar unicamente los ultimos dos jugadores de la ronda"
    Escribir ""
    Escribir "Se comparan los puntos de envido de las cartas."
    Escribir "Dos cartas del mismo palo: se suman sus valores + 20."
    Escribir Sin Saltar "Si no hay dos del mismo palo, se toma la carta de mayor valor para el envido."
    Escribir "Las cartas 10, 11 y 12 valen 0 para el envido."
    Escribir "| Apuesta      |Si se quiere|"
    Escribir "| -----------  | ---------: |"
    Escribir "| Sin envido   |   0 puntos |"
    Escribir "| Envido       |   2 puntos |"
    Escribir "| Real Envido  |   3 puntos |"
    Escribir "| Falta Envido | Los puntos |"
    Escribir "|              | faltantes  |"
    Escribir "|              | del rival  |"
    Escribir "|              | segun la   |"
    Escribir "|              | situacion  |"
    Escribir "|              | del partido|"
    Escribir ""
FinSubProceso

SubProceso Empates
    Escribir "PARDAS O EMPATE"
    Escribir "Si dos jugadores tiran cartas del mismo valor, hay parda."
    Escribir "Para un Truco de 3 manos:"
    Escribir "Parda en la primera: la segunda mano decide si alguien gana."
    Escribir "Parda en la segunda: gana quien haya ganado la primera."
    Escribir "Parda en la tercera: gana quien haya ganado la primera o segunda."
    Escribir "Si las tres manos terminan empatadas, gana el jugador o equipo que tenia ventaja por las reglas de las pardas."
    Escribir ""
    Escribir "IRSE AL MAZO"
    Escribir "En cualquier momento de una apuesta, el jugador puede irse al mazo."
    Escribir "El rival gana automaticamente los puntos que correspondan a la apuesta que estaba vigente."
FinSubProceso

SubProceso InformacionDelTruco
    Borrar Pantalla
    Escribir "                               __  "
    Escribir "                              |  \ "
    Escribir "  ______    ______    ______  | $$  ______    _______ "
    Escribir " /      \  /      \  /      \ | $$ |      \  /       \"
    Escribir "|  $$$$$$\|  $$$$$$\|  $$$$$$\| $$  \$$$$$$\|  $$$$$$$"
    Escribir "| $$   \$$| $$    $$| $$  | $$| $$ /      $$ \$$    \ "
    Escribir "| $$      | $$$$$$$$| $$__| $$| $$|  $$$$$$$ _\$$$$$$\"
    Escribir "| $$       \$$     \ \$$    $$| $$ \$$    $$|       $$"
    Escribir " \$$        \$$$$$$$ _\$$$$$$$ \$$  \$$$$$$$ \$$$$$$$ "
    Escribir "                    |  \__| $$ "
    Escribir "                     \$$    $$ "
    Escribir "                      \$$$$$$  "
    Escribir ""
    Escribir ""
    Escribir "========== COMO SE JUEGA =========="
    Escribir ""
    ComoSeJuega
    Escribir "========== VALORES DEL TRUCO =========="
    Escribir ""
    ValoresDelTruco
    Escribir "========== VALORES DEL ENVIDO =========="
    Escribir ""
    ValoresDelEnvido
    Escribir "========== PARDAS Y OTRAS REGLAS =========="
    Escribir ""
    Empates
FinSubProceso

SubProceso ConfigurarPartida(puntajeMaximo Por Referencia)
    Definir puntos Como Caracter
    puntos <- ""
    Repetir
        Borrar Pantalla
        Escribir "                               __  "
        Escribir "                              |  \  "
        Escribir "  ______   __    __  _______ _| $$_    ______    _______         ______               __  __    __   ______    ______    ______ "
        Escribir " /      \ |  \  |  \|       \   $$ \  /      \  /       \       |      \             |  \|  \  |  \ /      \  |      \  /      \"
        Escribir "|  $$$$$$\| $$  | $$| $$$$$$$\$$$$$$ |  $$$$$$\|  $$$$$$$        \$$$$$$\             \$$| $$  | $$|  $$$$$$\  \$$$$$$\|  $$$$$$\ "
        Escribir "| $$  | $$| $$  | $$| $$  | $$| $$ __| $$  | $$ \$$    \        /      $$            |  \| $$  | $$| $$  | $$ /      $$| $$   \$$ "
        Escribir "| $$__/ $$| $$__/ $$| $$  | $$| $$|  \ $$__/ $$ _\$$$$$$\      |  $$$$$$$            | $$| $$__/ $$| $$__| $$|  $$$$$$$| $$ "
        Escribir "| $$    $$ \$$    $$| $$  | $$ \$$  $$\$$    $$|       $$       \$$    $$            | $$ \$$    $$ \$$    $$ \$$    $$| $$ "
        Escribir "| $$$$$$$   \$$$$$$  \$$   \$$  \$$$$  \$$$$$$  \$$$$$$$         \$$$$$$$       __   | $$  \$$$$$$  _\$$$$$$$  \$$$$$$$ \$$ "
        Escribir "| $$                                                                           |  \__/ $$          |  \__| $$ "
        Escribir "| $$                                                                            \$$    $$           \$$    $$ "
        Escribir " \$$                                                                             \$$$$$$             \$$$$$$  "
        Escribir "                        A                         "
        Escribir "                  -------------                   "
        Escribir "                 |      15     |                  "
        Escribir "                  -------------                   "
        Escribir " "
        Escribir "                        B                         " 
        Escribir "                  -------------                   "
        Escribir "                 |      30     |                  "
        Escribir "                  -------------                   "
        Escribir " "
        Escribir " SELECCIONA LOS PUNTOS A LOS QUE SE JUGARA LA PARTIDA. (A para jugar a 15 puntos o B para jugar a 30 puntos)"
        Escribir " "
        Leer puntos
        puntos <- Mayusculas(puntos)
        Si puntos = 'A' Entonces
            puntajeMaximo <- 15
        Sino
            Si puntos = 'B' Entonces
                puntajeMaximo <- 30
            Sino
                Escribir "Opcion Invalida."
                Esperar 5 Segundos
            FinSi
        FinSi
    Hasta Que puntos = 'A' O puntos = 'B'
FinSubProceso

SubProceso CrearMazo(nros Por Referencia, palos Por Referencia, jers Por Referencia, envs Por Referencia)
    Definir cont, p, n, num, valorEnvido, jerarquia Como Entero
    Definir palosDeLasCartas Como Cadena
    Dimension palosDeLasCartas[4]
    palosDeLasCartas[0] <- "Espada"
    palosDeLasCartas[1] <- "Basto"
    palosDeLasCartas[2] <- "Oro"
    palosDeLasCartas[3] <- "Copa"
    cont <- 0
    num <- 0
    valorEnvido <- 0
    jerarquia <- 0
    Para p <- 0 Hasta 3 Hacer
        Para n <- 1 Hasta 10 Hacer
            Si n <= 7 Entonces
                num <- n
            Sino
                num <- n + 2
            FinSi
            
            Si num >= 10 Entonces
                valorEnvido <- 0
            Sino
                valorEnvido <- num
            FinSi
            
            jerarquia <- 0
            Si num = 4 Entonces 
                jerarquia <- 1 
            FinSi
            Si num = 5 Entonces 
                jerarquia <- 2 
            FinSi
            Si num = 6 Entonces 
                jerarquia <- 3 
            FinSi
            Si num = 7 Y (palosDeLasCartas[p] = "Copa" O palosDeLasCartas[p] = "Basto") Entonces 
                jerarquia <- 4 
            FinSi
            Si num = 10 Entonces 
                jerarquia <- 5 
            FinSi
            Si num = 11 Entonces 
                jerarquia <- 6 
            FinSi
            Si num = 12 Entonces 
                jerarquia <- 7 
            FinSi
            Si num = 1 Y (palosDeLasCartas[p] = "Copa" O palosDeLasCartas[p] = "Oro") Entonces 
                jerarquia <- 8 
            FinSi
            Si num = 2 Entonces 
                jerarquia <- 9 
            FinSi
            Si num = 3 Entonces 
                jerarquia <- 10 
            FinSi
            Si num = 7 Y palosDeLasCartas[p] = "Oro" Entonces 
                jerarquia <- 11 
            FinSi
            Si num = 7 Y palosDeLasCartas[p] = "Espada" Entonces 
                jerarquia <- 12 
            FinSi
            Si num = 1 Y palosDeLasCartas[p] = "Basto" Entonces 
                jerarquia <- 13 
            FinSi
            Si num = 1 Y palosDeLasCartas[p] = "Espada" Entonces 
                jerarquia <- 14 
            FinSi
            
            nros[cont] <- num
            palos[cont] <- palosDeLasCartas[p]
            jers[cont] <- jerarquia
            envs[cont] <- valorEnvido
            cont <- cont + 1
        FinPara
    FinPara
FinSubProceso

SubProceso Barajar(nros Por Referencia, palos Por Referencia, jers Por Referencia, envs Por Referencia)
    Definir i, j, auxNum, auxJer, auxEnv Como Entero
    Definir auxPalo Como Caracter
    j <- 0
    auxNum <- 0
    auxJer <- 0
    auxEnv <- 0
    auxPalo <- ""
    
    Para i <- 39 Hasta 1 Con Paso -1 Hacer
        j <- Azar(i + 1)
        auxNum <- nros[i]
        nros[i] <- nros[j]
        nros[j] <- auxNum
        
        auxPalo <- palos[i]
        palos[i] <- palos[j]
        palos[j] <- auxPalo
        
        auxJer <- jers[i]
        jers[i] <- jers[j]
        jers[j] <- auxJer
        
        auxEnv <- envs[i]
        envs[i] <- envs[j]
        envs[j] <- auxEnv
    FinPara
FinSubProceso

SubProceso Repartir(nros Por Referencia, palos Por Referencia, jers Por Referencia, envs Por Referencia, jNros Por Referencia, jPalos Por Referencia, jJers Por Referencia, jEnvs Por Referencia, cNros Por Referencia, cPalos Por Referencia, cJers Por Referencia, cEnvs Por Referencia, indiceMazo Por Referencia)
    Definir i Como Entero
    i <- 0
    Para i <- 0 Hasta 2 Hacer
        jNros[i] <- nros[indiceMazo]
        jPalos[i] <- palos[indiceMazo]
        jJers[i] <- jers[indiceMazo]
        jEnvs[i] <- envs[indiceMazo]
        indiceMazo <- indiceMazo + 1
        
        cNros[i] <- nros[indiceMazo]
        cPalos[i] <- palos[indiceMazo]
        cJers[i] <- jers[indiceMazo]
        cEnvs[i] <- envs[indiceMazo]
        indiceMazo <- indiceMazo + 1
    FinPara
FinSubProceso

Funcion totalEnvido <- CalcularEnvido(palos Por Referencia, envs Por Referencia)
    Definir totalEnvido, maxEnvido, i, tempEnv Como Entero
    maxEnvido <- 0
    tempEnv <- 0
    totalEnvido <- 0
    i <- 0
    
    Si palos[0] = palos[1] Entonces
        tempEnv <- 20 + envs[0] + envs[1]
        Si tempEnv > maxEnvido Entonces 
            maxEnvido <- tempEnv 
        FinSi
    FinSi
    Si palos[0] = palos[2] Entonces
        tempEnv <- 20 + envs[0] + envs[2]
        Si tempEnv > maxEnvido Entonces 
            maxEnvido <- tempEnv 
        FinSi
    FinSi
    Si palos[1] = palos[2] Entonces
        tempEnv <- 20 + envs[1] + envs[2]
        Si tempEnv > maxEnvido Entonces 
            maxEnvido <- tempEnv 
        FinSi
    FinSi
    
    Si maxEnvido = 0 Entonces
        Para i <- 0 Hasta 2 Hacer
            Si envs[i] > maxEnvido Entonces
                maxEnvido <- envs[i]
            FinSi
        FinPara
    FinSi
    totalEnvido <- maxEnvido
FinFuncion

Funcion cantar <- DecidirEnvidoCPU(envidoC, dificultadCPU)
    Definir cantar Como Logico
    cantar <- Falso
    Segun dificultadCPU Hacer
        1: 
            Si envidoC >= 30 Entonces 
                cantar <- Verdadero 
            FinSi
        2: 
            Si envidoC >= 28 O Azar(100) < 5 Entonces 
                cantar <- Verdadero 
            FinSi
        3: 
            Si envidoC >= 26 O Azar(100) < (dificultadCPU * 5) Entonces 
                cantar <- Verdadero 
            FinSi
        4: 
            Si envidoC >= 24 O Azar(100) < (dificultadCPU * 6) Entonces 
                cantar <- Verdadero 
            FinSi
    FinSegun
FinFuncion

Funcion cantarT <- DecidirTrucoCPU(fuerzaC, dificultadCPU)
    Definir cantarT Como Logico
    cantarT <- Falso
    Segun dificultadCPU Hacer
        1: 
            Si fuerzaC >= 8 Entonces 
                cantarT <- Verdadero 
            FinSi
        2: 
            Si fuerzaC >= 6 O Azar(100) < 5 Entonces 
                cantarT <- Verdadero 
            FinSi
        3: 
            Si fuerzaC >= 4 O Azar(100) < (dificultadCPU * 4) Entonces 
                cantarT <- Verdadero 
            FinSi
        4: 
            Si fuerzaC >= 3 O Azar(100) < (dificultadCPU * 5) Entonces 
                cantarT <- Verdadero 
            FinSi
    FinSegun
FinFuncion

SubProceso ResolverEnvido(tipo, eJ, eC, pJ Por Referencia, pC Por Referencia, pMax, estEnv Por Referencia, dificultadCPU, manoInicial, hJNros Por Referencia, hJPalos Por Referencia, hCNros Por Referencia, hCPalos Por Referencia, dispJ Por Referencia)
    Definir ptsGanados, falta, probabilidad, ganaJ, accion Como Entero
    Definir acepta Como Logico
    acepta <- Falso
    ptsGanados <- 2
    Si tipo = 2 Entonces 
        ptsGanados <- 3 
    FinSi
    Si tipo = 3 Entonces
        Si pJ > pC Entonces 
            falta <- pMax - pJ 
        Sino 
            falta <- pMax - pC 
        FinSi
        ptsGanados <- falta
    FinSi
	
    probabilidad <- 25 + (dificultadCPU * 15) + (eC * 2)
    Si probabilidad > 95 Entonces 
        probabilidad <- 95 
    FinSi
    Si Azar(100) <= probabilidad Entonces 
        acepta <- Verdadero 
    FinSi
	
    Si acepta Entonces
        Escribir "CPU: ¡Quiero! Mi envido es ", eC, "."
        Escribir "Tu envido es ", eJ, "."
        ganaJ <- 0
        Si eJ > eC Entonces
            ganaJ <- 1
        Sino
            Si eJ = eC Y manoInicial = 0 Entonces 
                ganaJ <- 1 
            FinSi
        FinSi
        Si ganaJ = 1 Entonces
            Escribir "Ganaste el envido: +", ptsGanados, " puntos."
            pJ <- pJ + ptsGanados
        Sino
            Escribir "La CPU gana el envido: +", ptsGanados, " puntos."
            pC <- pC + ptsGanados
        FinSi
    Sino
        Escribir "CPU: No quiero. Ganaste 1 punto por el rechazo."
        pJ <- pJ + 1
    FinSi
    estEnv <- 1
    Escribir "Presione una tecla para continuar..."
    Esperar Tecla
FinSubProceso

SubProceso ResolverTrucoJugador(estTruco Por Referencia, ptsTruco Por Referencia, turnoTruco Por Referencia, pJ Por Referencia, pC Por Referencia, alMazo Por Referencia, dificultadCPU, fuerzaCPU)
    Definir ptsSiguiente, probabilidad Como Entero
    ptsSiguiente <- 2
    Si estTruco = 1 Entonces 
        ptsSiguiente <- 3 
    FinSi
    Si estTruco = 2 Entonces 
        ptsSiguiente <- 4 
    FinSi
    Escribir "Jugador canta ", NombreCantoTruco(estTruco), "."
    probabilidad <- 20 + dificultadCPU * 12 + fuerzaCPU * 2
    Si probabilidad > 95 Entonces 
        probabilidad <- 95 
    FinSi
    Si Azar(100) <= probabilidad Entonces
        Escribir "CPU: ¡Quiero!"
        estTruco <- estTruco + 1
        ptsTruco <- ptsSiguiente
        turnoTruco <- 0
    Sino
        Escribir "CPU: No quiero. La CPU se va al mazo."
        pJ <- pJ + ptsTruco
        alMazo <- Verdadero
    FinSi
    Esperar 2 Segundos
FinSubProceso

Funcion nombre <- NombreCantoTruco(nivel)
    Definir nombre Como Caracter
    Segun nivel Hacer
        0: nombre <- "¡Truco!"
        1: nombre <- "¡Retruco!"
        2: nombre <- "¡Vale cuatro!"
        De Otro Modo: nombre <- "Truco"
    FinSegun
FinFuncion

Funcion carta <- ElegirCartaCPU(cJers Por Referencia, dispC Por Referencia, jerJugador, responde, dificultadCPU)
    Definir carta, i, menorDisponible, mejorGanadora, fuerzaElegida Como Entero
    Definir opciones, cantidad, elegido Como Entero
    Dimension opciones[3]
    carta <- -1
    menorDisponible <- -1
    mejorGanadora <- -1
    fuerzaElegida <- 999
    Para i <- 0 Hasta 2 Hacer
        Si dispC[i] = 1 Entonces
            Si menorDisponible = -1 O cJers[i] < cJers[menorDisponible] Entonces
                menorDisponible <- i
            FinSi
            Si responde = 1 Y cJers[i] > jerJugador Entonces
                Si mejorGanadora = -1 O cJers[i] < cJers[mejorGanadora] Entonces
                    mejorGanadora <- i
                FinSi
            FinSi
        FinSi
    FinPara
    Si responde = 1 Y dificultadCPU >= 3 Y mejorGanadora <> -1 Entonces
        carta <- mejorGanadora
    Sino
        Si dificultadCPU = 1 Entonces
            cantidad <- 0
            Para i <- 0 Hasta 2 Hacer
                Si dispC[i] = 1 Entonces
                    opciones[cantidad] <- i
                    cantidad <- cantidad + 1
                FinSi
            FinPara
            elegido <- Azar(cantidad)
            carta <- opciones[elegido]
        Sino
            Si responde = 1 Y mejorGanadora <> -1 Entonces
                carta <- mejorGanadora
            Sino
                Si menorDisponible <> -1 Entonces
                    Si dificultadCPU = 2 Y Azar(2) = 1 Entonces
                        carta <- Azar(3)
                        Mientras dispC[carta] = 0 Hacer
                            carta <- Azar(3)
                        FinMientras
                    Sino
                        carta <- menorDisponible
                    FinSi
                FinSi
            FinSi
        FinSi
    FinSi
FinFuncion

Funcion fuerza <- FuerzaManoCPU(jers Por Referencia)
    Definir i, fuerza Como Entero
    fuerza <- 0
    Para i <- 0 Hasta 2 Hacer
        Si jers[i] >= 10 Entonces
            fuerza <- fuerza + 3
        Sino
            Si jers[i] >= 7 Entonces
                fuerza <- fuerza + 2
            Sino
                Si jers[i] >= 4 Entonces
                    fuerza <- fuerza + 1
                FinSi
            FinSi
        FinSi
    FinPara
FinFuncion

SubProceso JugarRonda(jNros Por Referencia, jPalos Por Referencia, jJers Por Referencia, jEnvs Por Referencia, cNros Por Referencia, cPalos Por Referencia, cJers Por Referencia, cEnvs Por Referencia, puntosJ Por Referencia, puntosC Por Referencia, pMaximos, dificultadCPU, manoInicial Por Referencia)
    Definir dispJ, dispC, resultadoMano Como Entero
    Dimension dispJ[3], dispC[3], resultadoMano[3]
	
    Definir hJNros, hCNros Como Entero
    Definir hJPalos, hCPalos Como Caracter
    Dimension hJNros[3], hCNros[3], hJPalos[3], hCPalos[3]
	
    Definir i, mano, jugadorLider, turno, cartaSel, jCarta, cCarta, ganador, ganadasJ, ganadasC Como Entero
    Definir envidoCantado, envidoJ, envidoC, estTruco, ptsTruco, turnoTruco, accion Como Entero
    Definir alMazo, turnoValido, primerCarta, puedeSubirJ Como Logico
    Definir msjMesa Como Caracter
	
    Para i <- 0 Hasta 2 Hacer
        dispJ[i] <- 1
        dispC[i] <- 1
        resultadoMano[i] <- 0
        hJNros[i] <- 0
        hCNros[i] <- 0
        hJPalos[i] <- ""
        hCPalos[i] <- ""
    FinPara
    ganadasJ <- 0
    ganadasC <- 0
    envidoCantado <- 0
    estTruco <- 0
    ptsTruco <- 1
    turnoTruco <- 0
    alMazo <- Falso
    primerCarta <- Verdadero
    puedeSubirJ <- Verdadero
    jCarta <- -1
    cCarta <- -1
    mano <- 0
    jugadorLider <- manoInicial 
    envidoJ <- CalcularEnvido(jPalos, jEnvs)
    envidoC <- CalcularEnvido(cPalos, cEnvs)
	
    Mientras mano < 3 Y alMazo = Falso Y puntosJ < pMaximos Y puntosC < pMaximos Hacer
        Si jugadorLider = 0 Entonces
            turno <- 0
        Sino
            turno <- 1
        FinSi
        jCarta <- -1
        cCarta <- -1
		
        Mientras (jCarta = -1 O cCarta = -1) Y alMazo = Falso Hacer
            Borrar Pantalla
            Escribir "========================================================================================"
            Escribir "|                                  MESA DE TRUCO ARGENTO                               |"
            Escribir "========================================================================================"
            Escribir "| NOSOTROS: ", puntosJ, " / ", pMaximos, "                  CPU: ", puntosC, " / ", pMaximos, " |"
            Escribir "----------------------------------------------------------------------------------------"
            Escribir "Cartas CPU:"
            DibujarCartasOcultasCPU
            Escribir ""
            DibujarMesaHistorialGrafico(hJNros, hJPalos, hCNros, hCPalos)
            Escribir "Tus cartas:"
            DibujarCartasJugadorGrande(jNros, jPalos, dispJ)
            Escribir "Mano ", mano + 1, " | Mano ganadas: jugador ", ganadasJ, " - CPU ", ganadasC
			
            Si turno = 0 Entonces
                Escribir "Te toca jugar."
                Escribir "1. Jugar carta"
                Si primerCarta Y envidoCantado = 0 Entonces
                    Escribir "2. Cantar Envido"
                    Escribir "3. Cantar Real Envido"
                    Escribir "4. Cantar Falta Envido"
                FinSi
                Si estTruco < 3 Y puedeSubirJ Entonces
                    Escribir "5. Cantar/subir Truco"
                FinSi
                Escribir "6. Irse al mazo"
                Leer accion
                Segun accion Hacer
                    1:
                        Repetir
                            Escribir "Seleccione una carta disponible (1, 2 o 3):"
                            Leer cartaSel
                            cartaSel <- cartaSel - 1
                            turnoValido <- cartaSel >= 0 Y cartaSel <= 2
                            Si turnoValido Entonces
                                Si dispJ[cartaSel] = 0 Entonces
                                    turnoValido <- Falso
                                FinSi
                            FinSi
                            Si turnoValido = Falso Entonces
                                Escribir "Esa carta no esta disponible."
                            FinSi
                        Hasta Que turnoValido
                        jCarta <- cartaSel
                        dispJ[jCarta] <- 0
                        
                        hJNros[mano] <- jNros[jCarta]
                        hJPalos[mano] <- jPalos[jCarta]
                        
                        puedeSubirJ <- Verdadero 
                        primerCarta <- Falso 
                        turno <- 1
                    2, 3, 4:
                        Si primerCarta Y envidoCantado = 0 Entonces
                            ResolverEnvido(accion - 1, envidoJ, envidoC, puntosJ, puntosC, pMaximos, envidoCantado, dificultadCPU, manoInicial, hJNros, hJPalos, hCNros, hCPalos, dispJ)
                        Sino
                            Escribir "El envido solo se puede cantar antes de la primera carta."
                            Esperar 1 Segundos
                        FinSi
                    5:
                        Si estTruco < 3 Entonces
                            ResolverTrucoJugador(estTruco, ptsTruco, turnoTruco, puntosJ, puntosC, alMazo, dificultadCPU, FuerzaManoCPU(cJers))
                            Si alMazo = Falso Entonces
                                puedeSubirJ <- Falso 
                            FinSi
                        FinSi
                    6:
                        Escribir "Te fuiste al mazo."
                        puntosC <- puntosC + ptsTruco
                        alMazo <- Verdadero
                    De Otro Modo:
                        Escribir "Opcion invalida."
                        Esperar 1 Segundos
                FinSegun
            Sino
                Escribir "La CPU esta pensando..."
                
                Si primerCarta Y envidoCantado = 0 Entonces
                    Si DecidirEnvidoCPU(envidoC, dificultadCPU) Entonces
                        Borrar Pantalla
                        Escribir "========================================================================================"
                        Escribir "|                                         MESA                                          |"
                        Escribir "========================================================================================"
                        Escribir "| NOSOTROS: ", puntosJ, " / ", pMaximos, "                  CPU: ", puntosC, " / ", pMaximos, " |"
                        Escribir "----------------------------------------------------------------------------------------"
                        Escribir "Cartas CPU:"
                        DibujarCartasOcultasCPU
                        Escribir ""
                        DibujarMesaHistorialGrafico(hJNros, hJPalos, hCNros, hCPalos)
                        Escribir "Tus cartas:"
                        DibujarCartasJugadorGrande(jNros, jPalos, dispJ)
                        Escribir ""
                        Escribir "¡ATENCIÓN! La CPU canta ENVIDO."
                        Escribir "1. Quiero"
                        Escribir "2. No quiero"
                        Leer accion
                        Si accion = 1 Entonces
                            ResolverEnvidoCPU(envidoJ, envidoC, puntosJ, puntosC, pMaximos, envidoCantado, dificultadCPU, manoInicial)
                        Sino
                            puntosC <- puntosC + 1
                            envidoCantado <- 1
                            Escribir "Rechazaste el envido: la CPU suma 1 punto."
                            Escribir "Presione una tecla para continuar..."
                            Esperar Tecla
                        FinSi
                    FinSi
                FinSi
                
                Si alMazo = Falso Y estTruco = 0 Y (jCarta <> -1 O manoInicial = 1) Entonces
                    Si DecidirTrucoCPU(FuerzaManoCPU(cJers), dificultadCPU) Entonces
                        Borrar Pantalla
                        Escribir "CPU canta TRUCO."
                        Escribir "1. Quiero   2. No quiero"
                        Leer accion
                        Si accion = 1 Entonces
                            estTruco <- 1
                            ptsTruco <- 2
                            turnoTruco <- 1
                        Sino
                            puntosC <- puntosC + ptsTruco
                            alMazo <- Verdadero
                            Escribir "No quisiste. La CPU suma ", ptsTruco, " punto(s)."
                            Esperar 2 Segundos
                        FinSi
                    FinSi
                FinSi
                
                Si alMazo = Falso Entonces
                    Si jCarta <> -1 Entonces
                        cartaSel <- ElegirCartaCPU(cJers, dispC, jJers[jCarta], 1, dificultadCPU)
                    Sino
                        cartaSel <- ElegirCartaCPU(cJers, dispC, 0, 0, dificultadCPU)
                    FinSi
                    cCarta <- cartaSel
                    dispC[cCarta] <- 0
                    
                    hCNros[mano] <- cNros[cCarta]
                    hCPalos[mano] <- cPalos[cCarta]
                    
                    primerCarta <- Falso 
                    turno <- 0
                FinSi
            FinSi
        FinMientras
		
        Si alMazo = Falso Y jCarta <> -1 Y cCarta <> -1 Entonces
            msjMesa <- "Resultado Mano " + ConvertirATexto(mano + 1) + ": "
            Si jJers[jCarta] > cJers[cCarta] Entonces
                ganador <- 0
                ganadasJ <- ganadasJ + 1
                resultadoMano[mano] <- 1
                msjMesa <- msjMesa + "Gana el Jugador."
            Sino
                Si cJers[cCarta] > jJers[jCarta] Entonces
                    ganador <- 1
                    ganadasC <- ganadasC + 1
                    resultadoMano[mano] <- 2
                    msjMesa <- msjMesa + "Gana la CPU."
                Sino
                    ganador <- 2
                    resultadoMano[mano] <- 0
                    msjMesa <- msjMesa + "Empate (Parda)."
                FinSi
            FinSi
            
            Borrar Pantalla
            Escribir "========================================================================================"
            Escribir "|                                         MESA                                          |"
            Escribir "========================================================================================"
            Escribir "| NOSOTROS: ", puntosJ, " / ", pMaximos, "                  CPU: ", puntosC, " / ", pMaximos, " |"
            Escribir "----------------------------------------------------------------------------------------"
            Escribir "Cartas CPU:"
            DibujarCartasOcultasCPU
            Escribir ""
            DibujarMesaHistorialGrafico(hJNros, hJPalos, hCNros, hCPalos)
            Escribir "Tus cartas:"
            DibujarCartasJugadorGrande(jNros, jPalos, dispJ)
            Escribir msjMesa
            Esperar 2 Segundos
			
            Si ganador = 0 Entonces
                jugadorLider <- 0
            Sino
                Si ganador = 1 Entonces
                    jugadorLider <- 1
                FinSi
            FinSi
            mano <- mano + 1
        FinSi
		
        Si ganadasJ >= 2 O ganadasC >= 2 Entonces
            mano <- 3
        FinSi
    FinMientras
	
    Si alMazo = Falso Entonces
        ganador <- DeterminarGanadorRonda(resultadoMano, ganadasJ, ganadasC, manoInicial)
        Si ganador = 0 Entonces
            Escribir "GANASTE LA RONDA. +", ptsTruco, " puntos."
            puntosJ <- puntosJ + ptsTruco
        Sino
            Si ganador = 1 Entonces
                Escribir "LA CPU GANA LA RONDA. +", ptsTruco, " puntos."
                puntosC <- puntosC + ptsTruco
            Sino
                Escribir "Las tres bazas fueron pardas: gana la mano (quien salio primero). +", ptsTruco, " puntos."
                Si manoInicial = 0 Entonces
                    puntosJ <- puntosJ + ptsTruco
                Sino
                    puntosC <- puntosC + ptsTruco
                FinSi
            FinSi
        FinSi
    FinSi
    Esperar 2 Segundos
FinSubProceso

Funcion ganador <- DeterminarGanadorRonda(resultadoMano Por Referencia, ganadasJ, ganadasC, manoInicial)
    Definir ganador Como Entero
    ganador <- 2
    Si resultadoMano[0] <> 0 Entonces
        Si resultadoMano[1] = 0 O resultadoMano[1] = resultadoMano[0] Entonces
            ganador <- resultadoMano[0] - 1
        Sino
            Si resultadoMano[2] = 0 Entonces
                ganador <- resultadoMano[0] - 1
            Sino
                ganador <- resultadoMano[2] - 1
            FinSi
        FinSi
    Sino
        Si resultadoMano[1] <> 0 Entonces
            ganador <- resultadoMano[1] - 1
        Sino
            Si resultadoMano[2] <> 0 Entonces
                ganador <- resultadoMano[2] - 1
            Sino
                ganador <- manoInicial
            FinSi
        FinSi
    FinSi
FinFuncion

SubProceso ResolverEnvidoCPU(eJ, eC, pJ Por Referencia, pC Por Referencia, pMax, estEnv Por Referencia, dificultadCPU, manoInicial)
    Definir puntos, ganaCPU Como Entero
    puntos <- 2
    Si eC > eJ Entonces
        ganaCPU <- 1
    Sino
        Si eC = eJ Y manoInicial = 1 Entonces
            ganaCPU <- 1
        Sino
            ganaCPU <- 0
        FinSi
    FinSi
    Si ganaCPU = 1 Entonces
        pC <- pC + puntos
        Escribir "La CPU gana el envido (+2). Sus puntos: ", eC, " | Tus puntos: ", eJ
    Sino
        pJ <- pJ + puntos
        Escribir "Ganaste el envido (+2). Tu puntaje: ", eJ, " | Puntos CPU: ", eC
    FinSi
    estEnv <- 1
    Escribir "Presione una tecla para continuar..."
    Esperar Tecla
FinSubProceso

//LUDO

Funcion esSeguro <- esCasillaSegura(posGlobal)
    Definir esSeguro Como Logico
    esSeguro <- Falso
    Si posGlobal = 1 O posGlobal = 14 O posGlobal = 27 O posGlobal = 40 O posGlobal = 9 O posGlobal = 22 O posGlobal = 35 O posGlobal = 48 Entonces
        esSeguro <- Verdadero
    FinSi
FinFuncion

SubProceso EjecutarBucleJuego(cantidadJugadores, POSICION_META, juegoActivo Por Referencia, tablero, posicionTabla Por Referencia, estadoFicha Por Referencia, esVsPC)
    Definir i Como Entero
    i <- 0
    Mientras juegoActivo Hacer
        Para i <- 1 Hasta cantidadJugadores Hacer
            Si juegoActivo Entonces
                Borrar Pantalla
                Escribir "----------------------------------------------------------------"
                
                Si esVsPC Y i = 2 Entonces
                    Escribir "Turno de la COMPUTADORA (Jugador 2)..."
                    procesarTurnoPC(i, posicionTabla, estadoFicha, tablero, cantidadJugadores, POSICION_META, juegoActivo)
                    
                Sino
                    procesarTurnoJugador(i, posicionTabla, estadoFicha, tablero, cantidadJugadores, POSICION_META, juegoActivo)
                    imprimirMatriz(tablero)
                FinSi
                
                Si juegoActivo Entonces
                    Escribir ""
                    Escribir "Presione una tecla para finalizar su turno y pasar al siguiente..."
                    Esperar Tecla
                FinSi
            FinSi
        FinPara
    FinMientras
FinSubProceso
 
SubProceso verificarCaptura(idJugador, posGlobal, posicionTabla Por Referencia, estadoFicha Por Referencia)
    Definir j, p Como Entero
    Definir globalRival Como Entero
    globalRival <- 0
    j <- 0
    p <- 0
    Si esCasillaSegura(posGlobal) = Falso Y posGlobal >= 1 Y posGlobal <= 51 Entonces
        Para j <- 1 Hasta 4 Hacer
            Si j <> idJugador Entonces
                Para p <- 1 Hasta 4 Hacer
                    Si estadoFicha[j, p] Y posicionTabla[j, p] >= 1 Y posicionTabla[j, p] <= 51 Entonces
                        globalRival <- (((j - 1) * 13 + (posicionTabla[j, p] - 1)) MOD 52) + 1
                        Si globalRival = posGlobal Entonces
                            estadoFicha[j, p] <- Falso
                            posicionTabla[j, p] <- 0
                            Escribir " ¡CAPTURA! ¡La ficha ", p, " del Jugador ", j, " fue enviada a casa!"
                        FinSi
                    FinSi
                FinPara
            FinSi
        FinPara
    FinSi
FinSubProceso

Funcion llamarGanador(numeroJugador)
    Escribir ""
    Escribir "===================================="
    Escribir "  ¡GANO EL JUGADOR NRO: ", numeroJugador, "!"
    Escribir "===================================="
FinFuncion

Funcion modoDeJuego <- llamarModoDeJuego
    Definir modoDeJuego Como Entero
    modoDeJuego <- 0
    Mientras modoDeJuego < 1 O modoDeJuego > 3 Hacer
        Borrar Pantalla
        Escribir " "
        Escribir "      "
        Escribir "        "
        Escribir " __        __     __   _______    ______"
        Escribir "|  |      |  \   |  \ |       \  /       \ "
        Escribir "| $$|     |  $$  |$$| | $$$$$$$ |  $$$$$$$\"
        Escribir "| $$      | $$   |$$| | $$    |$| $$    |$$"
        Escribir "| $$      | $$__/ $$| | $$___/$$| $$___/  $$"
        Escribir "| $$       \$$    $$| | $$   $$/ \$$     $$"
        Escribir " \$$$$$$$$  \$$$$$$/   \$$$$$$/    \$$$$$$ "
        Escribir " "
        Escribir " "
        Escribir "                       1                       "
        Escribir "               -----------------               "
        Escribir "              |  JUGAR VS PC    |              "
        Escribir "               -----------------               "
        Escribir " "
        Escribir "                       2                       " 
        Escribir "               -----------------               "
        Escribir "              | JUGAR VS AMIGOS |              "
        Escribir "               -----------------               "
        Escribir " "
        Escribir "                       3                       " 
        Escribir "               -----------------               "
        Escribir "              |     VOLVER      |              "
        Escribir "               -----------------               "
        Escribir " "
        Escribir " SELECCIONA UNA DE LAS OPCIONES PARA EMPEZAR (1-2-3). "
        Escribir " "
        Leer modoDeJuego
        
        Si modoDeJuego < 1 O modoDeJuego > 3 Entonces
            Escribir " ¡Opcion invalida! Por favor, ingrese un valor entre 1 y 3."
            Esperar Tecla
        FinSi
    FinMientras
    Borrar Pantalla
FinFuncion

SubProceso dibujarCaraDado(valor)
    Segun valor Hacer
        1:
            Escribir "  +---------+"
            Escribir "  |         |"
            Escribir "  |    *    |"
            Escribir "  |         |"
            Escribir "  +---------+"
        2:
            Escribir "  +---------+"
            Escribir "  |  *      |"
            Escribir "  |         |"
            Escribir "  |      *  |"
            Escribir "  +---------+"
        3:
            Escribir "  +---------+"
            Escribir "  |  *      |"
            Escribir "  |    *    |"
            Escribir "  |      *  |"
            Escribir "  +---------+"
        4:
            Escribir "  +---------+"
            Escribir "  |  *   *  |"
            Escribir "  |         |"
            Escribir "  |  *   *  |"
            Escribir "  +---------+"
        5:
            Escribir "  +---------+"
            Escribir "  |  *   *  |"
            Escribir "  |    *    |"
            Escribir "  |  *   *  |"
            Escribir "  +---------+"
        6:
            Escribir "  +---------+"
            Escribir "  |  *   *  |"
            Escribir "  |  *   *  |"
            Escribir "  |  *   *  |"
            Escribir "  +---------+"
    FinSegun
FinSubProceso

Funcion resultado <- leerEnteroEntre(minVal, maxVal, mensaje)
    Definir resultado Como Entero
    resultado <- 0
    Repetir
        Escribir mensaje, ":"
        Leer resultado
        Si resultado < minVal O resultado > maxVal Entonces
            Escribir "Opcion invalida. Debe ser entre ", minVal, " y ", maxVal, "."
        FinSi
    Hasta Que resultado >= minVal Y resultado <= maxVal
FinFuncion

Funcion resultado <- tirarDado(jugador, modoJuego)
    Definir resultado, i Como Entero
    resultado <- 0
    i <- 0
    Si jugador <> 2 Y modoJuego <> 1 Entonces
        Escribir "Presione una tecla para lanzar el dado..."
        Esperar Tecla
    FinSi
	
    Para i <- 1 Hasta 8 Hacer
        resultado <- Azar(6) + 1
        Borrar Pantalla
        
        Escribir "  [ Lanzando dado del Jugador ", jugador, " ]"
        Escribir ""
        dibujarCaraDado(resultado)
        
        Si i <= 4 Entonces
            Esperar 50 Milisegundos
        Sino
            Si i <= 6 Entonces
                Esperar 150 Milisegundos
            Sino
                Esperar 300 Milisegundos
            FinSi
        FinSi
    FinPara
	
    resultado <- Azar(6) +1
    
    Borrar Pantalla
    Escribir "  ========================================"
    Escribir "  * RESULTADO: EL JUGADOR ", jugador, " OBTUVO UN ", resultado, " *"
    Escribir "  ========================================"
    Escribir ""
    dibujarCaraDado(resultado)
    Escribir ""
    
    Esperar 1 Segundos
FinFuncion

Funcion resultado <- verificarFichasEnCasa(idJugador, estadoFicha)
    Definir resultado Como Logico
    Definir p Como Entero
    resultado <- Falso
    p <- 0
    Para p <- 1 Hasta 4 Hacer
        Si NO estadoFicha[idJugador, p] Entonces
            resultado <- Verdadero
        FinSi
    FinPara
FinFuncion

Funcion resultado <- verificarFichasEnTablero(idJugador, posicionTabla, estadoFicha, meta)
    Definir resultado Como Logico
    Definir p Como Entero
    resultado <- Falso
    p <- 0
    Para p <- 1 Hasta 4 Hacer
        Si estadoFicha[idJugador, p] Y posicionTabla[idJugador, p] < meta Entonces
            resultado <- Verdadero
        FinSi
    FinPara
FinFuncion

SubProceso sacarFichaDeCasa(idJugador, posicionTabla Por Referencia, estadoFicha Por Referencia, tablero)
    Definir p Como Entero
    p <- 0
    Para p <- 1 Hasta 4 Hacer
        Si NO estadoFicha[idJugador, p] Entonces
            estadoFicha[idJugador, p] <- Verdadero
            posicionTabla[idJugador, p] <- 1
            Escribir "¡Ficha ", p, " salio de la casa a la posicion 1!"
            p <- 4
        FinSi
    FinPara
FinSubProceso

SubProceso elegirY1MoverFicha(idJugador, dado, posicionTabla Por Referencia, estadoFicha Por Referencia, tablero Por Referencia, cantJugadores, meta)
    Definir fichaElegida, paso, posGlb Como Entero
    Definir movimientoValido Como Logico
    fichaElegida <- 0
    paso <- 0
    posGlb <- 0
    
    movimientoValido <- Falso
    
    Repetir
        Escribir "Elija el numero de ficha (1 a 4) en juego para mover con valor ", dado, ":"
        fichaElegida <- leerEnteroEntre(1, 4, "Numero de ficha")
        
        Si estadoFicha[idJugador, fichaElegida] Y posicionTabla[idJugador, fichaElegida] > 0 Y posicionTabla[idJugador, fichaElegida] < meta Entonces
            
            // Animacion de movimiento paso a paso (SIN verificar capturas en el camino)
            Para paso <- 1 Hasta dado Hacer
                Si posicionTabla[idJugador, fichaElegida] < meta Entonces
                    posicionTabla[idJugador, fichaElegida] <- posicionTabla[idJugador, fichaElegida] + 1
                    
                    Borrar Pantalla
                    Escribir "  [ Moviendo ficha ", fichaElegida, " del Jugador ", idJugador, " ]"
                    Escribir ""
                    dibujarTablero(tablero, posicionTabla, cantJugadores, estadoFicha)
                    Esperar 850 Milisegundos
                FinSi
                Limpiar Pantalla
            FinPara
            
            // Evaluar captura UNICAAMENTE al finalizar la cantidad total de pasos
            Si posicionTabla[idJugador, fichaElegida] <= 51 Entonces
                posGlb <- (((idJugador - 1) * 13 + (posicionTabla[idJugador, fichaElegida] - 1)) MOD 52) + 1
                verificarCaptura(idJugador, posGlb, posicionTabla, estadoFicha)
            FinSi
            
            movimientoValido <- Verdadero
        Sino
            Escribir "¡Esa ficha no esta activa o ya llego a la meta! Por favor, elija otra."
        FinSi
    Hasta Que movimientoValido
FinSubProceso
SubProceso verificarGanadorTurno(idJugador, posicionTabla, meta, juegoActivo Por Referencia)
    Definir p Como Entero
    p <- 0
    Para p <- 1 Hasta 4 Hacer
        Si posicionTabla[idJugador, p] >= meta Entonces
            juegoActivo <- Falso
            llamarGanador(idJugador)
        FinSi
    FinPara
FinSubProceso

SubProceso procesarTurnoJugador(idJugador, posicionTabla Por Referencia, estadoFicha Por Referencia, tablero Por Referencia, cantJugadores, meta, juegoActivo Por Referencia)
    Definir dado, opcionAccion Como Entero
    Definir hayEnCasa, hayEnTablero Como Logico
    Definir turnoExtra Como Logico
    Definir modoJ Como Entero
    dado <- 0
    opcionAccion <- 0
    modoJ <- 2
    Repetir
        turnoExtra <- Falso
        Escribir "Turno del Jugador: ", idJugador
        dado <- tirarDado(idJugador, modoJ)
        
        hayEnCasa <- verificarFichasEnCasa(idJugador, estadoFicha)
        hayEnTablero <- verificarFichasEnTablero(idJugador, posicionTabla, estadoFicha, meta)
        
        Si dado = 6 Entonces
            turnoExtra <- Verdadero
            Escribir " ¡Obtuviste un 6! Tienes derecho a un turno extra despues de jugar."
        FinSi
        
        Si dado = 6 Y hayEnCasa Y hayEnTablero Entonces
            Escribir "¿Que deseas hacer?"
            Escribir "1. Sacar una ficha de la casa"
            Escribir "2. Mover una ficha que ya esta en el tablero"
            opcionAccion <- leerEnteroEntre(1, 2, "Elija una opcion")
            
            Si opcionAccion = 1 Entonces
                sacarFichaDeCasa(idJugador, posicionTabla, estadoFicha, tablero)
            Sino
                elegirY1MoverFicha(idJugador, dado, posicionTabla, estadoFicha, tablero, cantJugadores, meta)
            FinSi
        Sino
            Si dado = 6 Y hayEnCasa Y NO hayEnTablero Entonces
                sacarFichaDeCasa(idJugador, posicionTabla, estadoFicha, tablero)
            Sino
                Si hayEnTablero Entonces
                    elegirY1MoverFicha(idJugador, dado, posicionTabla, estadoFicha, tablero, cantJugadores, meta)
                Sino
                    Escribir "No tienes fichas en juego y no sacaste un 6. Turno terminado."
                    turnoExtra <- Falso
                FinSi
            FinSi
        FinSi
        
        verificarGanadorTurno(idJugador, posicionTabla, meta, juegoActivo)
        dibujarTablero(tablero, posicionTabla, cantJugadores, estadoFicha)
        
        Si turnoExtra Y juegoActivo Entonces
            Escribir ""
            Escribir " ¡Por haber sacado un 6, tiras el dado nuevamente!"
            Escribir "Presione una tecla para continuar..."
			imprimirMatriz(tablero)
            Esperar Tecla
        FinSi
        
    Hasta Que turnoExtra = Falso O juegoActivo = Falso
FinSubProceso

SubProceso procesarTurnoPC(idJugador, posicionTabla Por Referencia, estadoFicha Por Referencia, tablero Por Referencia, cantJugadores, meta, juegoActivo Por Referencia)
    Definir dado Como Entero
    Definir hayEnCasa, hayEnTablero, turnoExtra, accionRealizada Como Logico
    Definir modoJ Como Entero
    dado <- 0
    modoJ <- 1
    Repetir
        turnoExtra <- Falso
        accionRealizada <- Falso
        
        Borrar Pantalla
        Escribir "----------------------------------------------------------------"
        Escribir "Turno de la COMPUTADORA (Jugador 2)..."
        Escribir ""
        
        dado <- tirarDado(idJugador, modoJ)
        
        hayEnCasa <- verificarFichasEnCasa(idJugador, estadoFicha)
        hayEnTablero <- verificarFichasEnTablero(idJugador, posicionTabla, estadoFicha, meta)
        
        Si dado = 6 Entonces
            turnoExtra <- Verdadero
            Escribir " ¡La PC obtuvo un 6 y gano un turno extra!"
        FinSi
        
        Si dado = 6 Y hayEnCasa Y NO accionRealizada Entonces
            pcSacarDeCasa(idJugador, posicionTabla, estadoFicha, accionRealizada)
        FinSi
        
        Si NO accionRealizada Y hayEnTablero Entonces
            pcMoverFichaTablero(idJugador, dado, posicionTabla, estadoFicha, tablero, cantJugadores, meta, accionRealizada)
        FinSi
        
        Si NO accionRealizada Entonces
            Escribir "La PC no pudo realizar ningun movimiento en este turno."
            turnoExtra <- Falso
        FinSi
        
        verificarGanadorTurno(idJugador, posicionTabla, meta, juegoActivo)
        dibujarTablero(tablero, posicionTabla, cantJugadores, estadoFicha)
        
        Si turnoExtra Y juegoActivo Entonces
            Escribir ""
            Escribir " ¡La PC tirara el dado nuevamente por haber obtenido un 6!"
            Esperar 1.5 Segundos
        FinSi
        
    Hasta Que turnoExtra = Falso O juegoActivo = Falso
FinSubProceso

SubProceso pcMoverFichaTablero(idJugador, dado, posicionTabla Por Referencia, estadoFicha Por Referencia, tablero Por Referencia, cantJugadores, meta, accionRealizada Por Referencia)
    Definir p, paso, posGlb Como Entero
    p <- 0
    paso <- 0
    posGlb <- 0
    Para p <- 1 Hasta 4 Hacer
        Si estadoFicha[idJugador, p] Y posicionTabla[idJugador, p] > 0 Y posicionTabla[idJugador, p] < meta Y NO accionRealizada Entonces
            Escribir "-> La PC mueve su ficha ", p, " con valor ", dado, ":"
            
            Para paso <- 1 Hasta dado Hacer
                Si posicionTabla[idJugador, p] < meta Entonces
                    posicionTabla[idJugador, p] <- posicionTabla[idJugador, p] + 1
                    
                    Borrar Pantalla
                    Escribir "  [ La PC esta moviendo la ficha ", p, " ]"
                    Escribir ""
                    dibujarTablero(tablero, posicionTabla, cantJugadores, estadoFicha)
                    Esperar 750 Milisegundos
                    Limpiar Pantalla
                FinSi
            FinPara
            
            // Evaluar captura UNICAAMENTE al finalizar el movimiento de la PC
            Si posicionTabla[idJugador, p] <= 51 Entonces
                posGlb <- (((idJugador - 1) * 13 + (posicionTabla[idJugador, p] - 1)) MOD 52) + 1
                verificarCaptura(idJugador, posGlb, posicionTabla, estadoFicha)
            FinSi
            
            accionRealizada <- Verdadero
        FinSi
    FinPara
FinSubProceso
SubProceso pcSacarDeCasa(idJugador, posicionTabla Por Referencia, estadoFicha Por Referencia, accionRealizada Por Referencia)
    Definir p, posGlb Como Entero
    p <- 0
    posGlb <- 0
    Para p <- 1 Hasta 4 Hacer
        Si NO estadoFicha[idJugador, p] Y NO accionRealizada Entonces
            estadoFicha[idJugador, p] <- Verdadero
            posicionTabla[idJugador, p] <- 1
            
            posGlb <- (((idJugador - 1) * 13 + (posicionTabla[idJugador, p] - 1)) % 52) + 1
            verificarCaptura(idJugador, posGlb, posicionTabla, estadoFicha)
            
            Escribir "-> La PC saco su ficha ", p, " de la casa a la posicion 1."
            accionRealizada <- Verdadero
        FinSi
    FinPara
FinSubProceso

SubProceso inicializarLienzo(tablero Por Referencia)
    Definir f, c Como Entero
    f <- 0
    c <- 0
    Para f <- 0 Hasta 14 Hacer
        Para c <- 0 Hasta 14 Hacer
            tablero[f, c] <- " . "
        FinPara
    FinPara
    Para f <- 6 Hasta 8 Hacer
        Para c <- 6 Hasta 8 Hacer
            tablero[f, c] <- " X "
        FinPara
    FinPara
FinSubProceso
SubProceso posicionarCasaEnMatriz(tablero Por Referencia, numJugador, numFicha, etiqueta)
    Segun numJugador Hacer
        1: // Base inferior izquierda
            Si numFicha = 1 Entonces 
                tablero[11, 0] <- etiqueta
            FinSi
            Si numFicha = 2 Entonces 
                tablero[12, 2] <- etiqueta 
            FinSi
            Si numFicha = 3 Entonces 
                tablero[13, 1] <- etiqueta
            FinSi
            Si numFicha = 4 Entonces 
                tablero[13, 2] <- etiqueta
            FinSi
            
        2: // Base superior izquierda
            Si numFicha = 1 Entonces 
                tablero[1, 1] <- etiqueta
            FinSi
            Si numFicha = 2 Entonces 
                tablero[1, 2] <- etiqueta
            FinSi
            Si numFicha = 3 Entonces 
                tablero[2, 1] <- etiqueta
            FinSi
            Si numFicha = 4 Entonces 
                tablero[2, 2] <- etiqueta
            FinSi
            
        3: // Base superior derecha
            Si numFicha = 1 Entonces 
                tablero[1, 12] <- etiqueta
            FinSi
            Si numFicha = 2 Entonces 
                tablero[1, 13] <- etiqueta
            FinSi
            Si numFicha = 3 Entonces 
                tablero[2, 12] <- etiqueta
            FinSi
            Si numFicha = 4 Entonces 
                tablero[2, 13] <- etiqueta
            FinSi
            
        4: // Base inferior derecha
            Si numFicha = 1 Entonces 
                tablero[12, 12] <- etiqueta
            FinSi
            Si numFicha = 2 Entonces 
                tablero[12, 13] <- etiqueta
            FinSi
            Si numFicha = 3 Entonces 
                tablero[13, 12] <- etiqueta
            FinSi
            Si numFicha = 4 Entonces 
                tablero[13, 13] <- etiqueta
            FinSi
    FinSegun
FinSubProceso

SubProceso posicionarFichaEnMatriz(tablero Por Referencia, posRelativa, numJugador, etiquetaJugador)
    Definir posGlobal Como Entero
    posGlobal <- 0
    Si posRelativa >= 1 Y posRelativa <= 51 Entonces
        posGlobal <- (((numJugador - 1) * 13 + (posRelativa - 1)) MOD 52) + 1
        Segun posGlobal Hacer
            1:  tablero[13, 6]  <- etiquetaJugador
            2:  tablero[12, 6]  <- etiquetaJugador
            3:  tablero[11, 6]  <- etiquetaJugador
            4:  tablero[10, 6]  <- etiquetaJugador
            5:  tablero[9, 6]   <- etiquetaJugador
            6:  tablero[8, 5]   <- etiquetaJugador
            7:  tablero[8, 4]   <- etiquetaJugador
            8:  tablero[8, 3]   <- etiquetaJugador
            9:  tablero[8, 2]   <- etiquetaJugador
            10: tablero[8, 1]   <- etiquetaJugador
            11: tablero[8, 0]   <- etiquetaJugador
            12: tablero[7, 0]   <- etiquetaJugador
            13: tablero[6, 0]   <- etiquetaJugador
            14: tablero[6, 1]   <- etiquetaJugador
            15: tablero[6, 2]   <- etiquetaJugador
            16: tablero[6, 3]   <- etiquetaJugador
            17: tablero[6, 4]   <- etiquetaJugador
            18: tablero[6, 5]   <- etiquetaJugador
            19: tablero[5, 6]   <- etiquetaJugador
            20: tablero[4, 6]   <- etiquetaJugador
            21: tablero[3, 6]   <- etiquetaJugador
            22: tablero[2, 6]   <- etiquetaJugador
            23: tablero[1, 6]   <- etiquetaJugador
            24: tablero[0, 6]   <- etiquetaJugador
            25: tablero[0, 7]   <- etiquetaJugador
            26: tablero[0, 8]   <- etiquetaJugador
            27: tablero[1, 8]   <- etiquetaJugador
            28: tablero[2, 8]   <- etiquetaJugador
            29: tablero[3, 8]   <- etiquetaJugador
            30: tablero[4, 8]   <- etiquetaJugador
            31: tablero[5, 8]   <- etiquetaJugador
            32: tablero[6, 9]   <- etiquetaJugador
            33: tablero[6, 10]  <- etiquetaJugador
            34: tablero[6, 11]  <- etiquetaJugador
            35: tablero[6, 12]  <- etiquetaJugador
            36: tablero[6, 13]  <- etiquetaJugador
            37: tablero[6, 14]  <- etiquetaJugador
            38: tablero[7, 14]  <- etiquetaJugador
            39: tablero[8, 14]  <- etiquetaJugador
            40: tablero[8, 13]  <- etiquetaJugador
            41: tablero[8, 12]  <- etiquetaJugador
            42: tablero[8, 11]  <- etiquetaJugador
            43: tablero[8, 10]  <- etiquetaJugador
            44: tablero[8, 9]   <- etiquetaJugador
            45: tablero[9, 8]   <- etiquetaJugador
            46: tablero[10, 8]  <- etiquetaJugador
            47: tablero[11, 8]  <- etiquetaJugador
            48: tablero[12, 8]  <- etiquetaJugador
            49: tablero[13, 8]  <- etiquetaJugador
            50: tablero[14, 8]  <- etiquetaJugador
            51: tablero[14, 7]  <- etiquetaJugador
            52: tablero[14, 6]  <- etiquetaJugador
        FinSegun
    Sino
        Definir pasoMeta Como Entero
        pasoMeta <- posRelativa - 51
        Segun numJugador Hacer
            1: tablero[14 - pasoMeta, 7] <- etiquetaJugador
            2: tablero[7, pasoMeta - 1]  <- etiquetaJugador
            3: tablero[pasoMeta - 1, 7]  <- etiquetaJugador
            4: tablero[7, 15 - pasoMeta] <- etiquetaJugador
        FinSegun
    FinSi
FinSubProceso

Funcion imprimirMatriz(tablero)
    Definir f, c Como Entero
    f <- 0
    c <- 0
    Para f <- 0 Hasta 14 Hacer
        Para c <- 0 Hasta 14 Hacer
            Escribir Sin Saltar tablero[f, c]
        FinPara
        Escribir ""
    FinPara
FinFuncion

SubProceso dibujarTablero(tablero Por Referencia, posicionTabla, cantJugadores, estadoFicha)
    Definir j, p Como Entero
    Definir etiqueta Como Caracter
    etiqueta <- ""
    inicializarLienzo(tablero)
    
    Para j <- 1 Hasta cantJugadores Hacer
        Para p <- 1 Hasta 4 Hacer
            etiqueta <- Concatenar(ConvertirATexto(j), Concatenar(".", ConvertirATexto(p)))
            
            Si estadoFicha[j, p] Y posicionTabla[j, p] >= 1 Entonces
                posicionarFichaEnMatriz(tablero, posicionTabla[j, p], j, etiqueta)
            Sino
                posicionarCasaEnMatriz(tablero, j, p, etiqueta)
            FinSi
        FinPara
    FinPara
FinSubProceso
//Batalla Naval
SubProceso MostrarPortada
    Escribir ".......................................................... ................... ."
    Escribir "....... .....................................-:................................."
    Escribir "............................. ..............::::..................... .........."
    Escribir "........................ ..............::::..-:..::::..........................."
    Escribir "................. .. .................:-::::----::::-................. ........."
    Escribir "......................................:----..-: :----..........................."
    Escribir ".............................................-. ............. .................."
    Escribir ".......... ..................................-....... .........................."
    Escribir "...................... ..... .............@@@@@@@@. ............................"
    Escribir "............. ..........................@@++++++@@.............................."
    Escribir "......................................%@@@@@@+*@@@................... .........."
    Escribir "......................................%@@@@@@+*@@@.............................."
    Escribir "......................................%@********@@.............................."
    Escribir "............. ..... ..... ............%@########@@.............................."
    Escribir "................... ..................%@########@@.............................."
    Escribir "...... ................. .............%@********@@.............................."
    Escribir ".... ................. ...............%@@@@@@@@@@@................. ............"
    Escribir "................................... ..%@++++++++@@.................. ... ......."
    Escribir "...................................@@@@@++++++++@@@%............................"
    Escribir ".................................%@+++++++++++++++@%...@%.....@................."
    Escribir ".......@@@..........@@@.........@@@@@@*+@@@@@+*@*+@%.%@#%@:.@@#@@......... @@@.."
    Escribir ".......@%#@@@@@     @@#@@@@@     @#++++++++++++++++@@@@@@@@@@@@@@@@%...@@@@@#%@.."
    Escribir "........%@@@###@%     @@@###@@  @@@@@@*+@%+#@+*@*+@@#############@%.%@###@@@%..."
    Escribir "::::::::@@@@@@@@@::::+@@@@@@@@:+@@################@@@@@@@@@@@@@@@@@:@@@@@@@@@:::"
    Escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    Escribir "=+@@@@@@=:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::@@"
    Escribir "........#@@%------------------------------------------------------------------@@"
    Escribir ". ..........@#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++@@"
    Escribir ".... ........%@+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#@.."
    Escribir ".......... ....@@+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#@.."
    Escribir "::::::........:-----++++++=------=++++++-------++++++-------++++++=------=+@%..."
    Escribir "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
    Escribir "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
    Escribir "######*------*######------+######+------######*------*######------+######+------"
    Escribir "################################################################################"
    Escribir "################################################################################"
    Escribir "................................................................................"
    Escribir "............ .................................................... .............."
    Escribir ".................... ....... .............................................. ...."
    Escribir ".. ................................. ................................. ........."
    Escribir "...... .......... ......................................................... ...."
FinSubProceso

Funcion resultado <- Jugar(modo1, n)
    Definir tablero, tableroDisparosBot, tableroBot, tableroDisparosJugador Como Caracter
    Dimension tablero[11, 11]
    Dimension tableroDisparosBot[11, 11]
    Dimension tableroBot[11, 11]
    Dimension tableroDisparosJugador[11, 11]
	
    Definir i, j, filaJugador, colJugador, resultado Como Entero
    Definir impactosJugador, impactosBot Como Entero
    i <- 0
    j <- 0
    filaJugador <- 0
    colJugador <- 0
    impactosJugador <- 0
    impactosBot <- 0
    resultado <- 0
	
    Limpiar Pantalla
	
    Escribir "=========================================="
    Escribir "                  JUGAR"
    Escribir "=========================================="
    Escribir ""
    Escribir "Seleccione el modo de juego:"
    Escribir ""
    Escribir "1. Jugador vs Computadora"
    Escribir "2. Volver"
    Escribir ""
    Escribir "Seleccione una opcion: "
    Leer modo1
	
    Segun modo1 Hacer
        1:
            Para i <- 1 Hasta n Hacer
                Para j <- 1 Hasta n Hacer
                    tablero[i, j] <- "~"
                    tableroDisparosBot[i, j] <- "~"
                    tableroBot[i, j] <- "~"
                    tableroDisparosJugador[i, j] <- "~"
                FinPara
            FinPara
			
            Limpiar Pantalla
            Escribir "Coloca tus barcos para comenzar la partida."
            Esperar Tecla
			
            ColocarBarcos(tablero, n)
            ColocarBarcosBot(tableroBot, n)
			
            impactosJugador <- 0
            impactosBot <- 0
			
            Mientras impactosJugador < 16 Y impactosBot < 16 Hacer
                Limpiar Pantalla
                Escribir "=========================================="
                Escribir "             BATALLA NAVAL"
                Escribir "=========================================="
                Escribir ""
                Escribir "TU TABLERO (X = barco impactado, O = agua):"
                DibujarTableroJugador(tablero, tableroDisparosBot, n)
				
                Escribir "TABLERO ENEMIGO (X = impacto, O = agua):"
                DibujarTableroEnemigo(tableroDisparosJugador, n)
				
                Escribir "TU TURNO"
                DisparoJugador(tableroBot, tableroDisparosJugador, n)
				
                impactosJugador <- ContarImpactos(tableroDisparosJugador, n)
				
                Si impactosJugador < 16 Entonces
                    Escribir ""
                    Escribir "Presione una tecla para el turno del bot..."
                    Esperar Tecla
					
                    Limpiar Pantalla
                    Escribir "TURNO DE LA COMPUTADORA"
                    DisparoBot(tablero, tableroDisparosBot, n)
                    impactosBot <- ContarImpactos(tableroDisparosBot, n)
					
                    Escribir ""
                    Escribir "Presione una tecla para continuar..."
                    Esperar Tecla
                FinSi
            FinMientras
			
            Limpiar Pantalla
            Escribir "=========================================="
            Escribir "             FIN DE LA PARTIDA"
            Escribir "=========================================="
            Escribir ""
            Escribir "TU TABLERO:"
            DibujarTableroJugador(tablero, tableroDisparosBot, n)
            Escribir "TABLERO ENEMIGO:"
            DibujarTableroEnemigo(tableroDisparosJugador, n)
			
            Si impactosJugador >= 16 Entonces
                Escribir "FELICIDADES! Hundiste todos los barcos del bot."
            Sino
                Escribir "La computadora hundio todos tus barcos."
            FinSi
			
            Escribir ""
            Escribir "Presione una tecla para volver al menu..."
            Esperar Tecla
			
        2: 
			Escribir "Saliendo..."
			
        De Otro Modo:
            Escribir ""
            Escribir "Opcion invalida."
            Esperar Tecla
    FinSegun
	
    resultado <- 0
FinFuncion

Funcion resultado <- CabeEnTablero(fila, col, tamanio, orientacion, n)
	Definir resultado Como Logico
    resultado <- Falso
    Si orientacion = 1 Entonces
        Si fila >= 1 Y fila <= n Y col >= 1 Y col + tamanio - 1 <= n Entonces
            resultado <- Verdadero
        FinSi
    FinSi
    Si orientacion = 2 Entonces
        Si fila >= 1 Y fila + tamanio - 1 <= n Y col >= 1 Y col <= n Entonces
            resultado <- Verdadero
        FinSi
    FinSi
FinFuncion

Funcion resultado <- EstaLibre(tablero, fila, col, tamanio, orientacion, n)
    Definir i Como Entero
	Definir resultado Como Logico
    i <- 0
    resultado <- Verdadero
    Si orientacion = 1 Entonces
        Para i <- col Hasta col + tamanio - 1 Hacer
            Si tablero[fila, i] = "B" Entonces
                resultado <- Falso
            FinSi
        FinPara
    FinSi
    Si orientacion = 2 Entonces
        Para i <- fila Hasta fila + tamanio - 1 Hacer
            Si tablero[i, col] = "B" Entonces
                resultado <- Falso
            FinSi
        FinPara
    FinSi
FinFuncion

SubProceso ColocarBarcos(tablero, n)
    Definir fila, col, orientacion, tamanio, k, i, j Como Entero
    Definir colocado Como Logico
    Definir tamanioBarcos Como Entero
    Dimension tamanioBarcos[5]
    fila <- 0
    col <- 0
    orientacion <- 0
    tamanio <- 0
    k <- 0
    i <- 0
    j <- 0
    
    tamanioBarcos[1] <- 5
    tamanioBarcos[2] <- 4
    tamanioBarcos[3] <- 4
    tamanioBarcos[4] <- 3
    
    Para k <- 1 Hasta 4 Hacer
        tamanio <- tamanioBarcos[k]
        colocado <- Falso
        
        Mientras NO colocado Hacer
            Limpiar Pantalla
            Escribir "=========================================="
            Escribir "          COLOCACION DE BARCOS"
            Escribir "=========================================="
            Escribir ""
            DibujarTableroNaval(tablero, n)
            Escribir "Colocando barco ", k, " de ", tamanio, " espacios."
            Escribir ""
            Escribir "Ingrese fila inicial (1-10): "
            Leer fila
            Escribir "Ingrese columna inicial (1-10): "
            Leer col
            Escribir "Elija orientacion (1. Horizontal, 2. Vertical): "
            Leer orientacion
            
            Si orientacion = 1 O orientacion = 2 Entonces
                Si CabeEnTablero(fila, col, tamanio, orientacion, n) Entonces
                    Si EstaLibre(tablero, fila, col, tamanio, orientacion, n) Entonces
                        Si orientacion = 1 Entonces
                            Para j <- col Hasta col + tamanio - 1 Hacer
                                tablero[fila, j] <- "B"
                            FinPara
                        Sino
                            Para i <- fila Hasta fila + tamanio - 1 Hacer
                                tablero[i, col] <- "B"
                            FinPara
                        FinSi
                        colocado <- Verdadero
                    Sino
                        Escribir ""
                        Escribir "Error: Hay otro barco en esa posicion."
                        Esperar Tecla
                    FinSi
                Sino
                    Escribir ""
                    Escribir "Error: El barco se sale del tablero."
                    Esperar Tecla
                FinSi
            Sino
                Escribir ""
                Escribir "Orientacion invalida. Elija 1 o 2."
                Esperar Tecla
            FinSi
        FinMientras
    FinPara
FinSubProceso


SubProceso Instrucciones
    Limpiar Pantalla
    Escribir "=========================================="
    Escribir "             INSTRUCCIONES"
    Escribir "=========================================="
    Escribir ""
    Escribir "El objetivo de Batalla Naval es hundir"
    Escribir "todos los barcos del oponente."
    Escribir ""
    Escribir "El tablero es de un tamanio fijo de 10x10."
    Escribir "Cada jugador posiciona su flota de 4 barcos:"
    Escribir "- 1 barco de 5 espacios"
    Escribir "- 2 barcos de 4 espacios"
    Escribir "- 1 barco de 3 espacios"
    Escribir ""
    Escribir "Gana el jugador que hunda todos"
    Escribir "los barcos del oponente."
    Escribir ""
    Escribir "=========================================="
    Escribir ""
    Escribir "Presione una tecla para volver al menu."
    Esperar Tecla
FinSubProceso

Funcion resultado <- Configuracion(opcionConfig, tamanioTablero)
    opcionConfig <- 0
    Limpiar Pantalla
    Escribir "=========================================="
    Escribir "             CONFIGURACION"
    Escribir "=========================================="
    Escribir ""
    Escribir "Nota: El tablero es fijo de 10x10."
    Escribir ""
    Escribir "1. Cantidad de barcos (Informativo)"
    Escribir "2. Dificultad"
    Escribir "3. Volver"
    Escribir ""
    Escribir "Seleccione una opcion: "
    Leer opcionConfig
    
    Segun opcionConfig Hacer
        1:
            Limpiar Pantalla
            Escribir "=========================================="
            Escribir "          CANTIDAD DE BARCOS"
            Escribir "=========================================="
            Escribir ""
            Escribir "La flota actual consta de:"
            Escribir "- 1 barco de 5 casillas"
            Escribir "- 2 barcos de 4 casillas"
            Escribir "- 1 barco de 3 casillas"
            Escribir ""
            Esperar Tecla
        2:
            Limpiar Pantalla
            Escribir "=========================================="
            Escribir "                DIFICULTAD"
            Escribir "=========================================="
            Escribir ""
            Escribir "1. Facil"
            Escribir "2. Normal"
            Escribir "3. Dificil"
            Escribir ""
            Escribir "La dificultad afectara a la"
            Escribir "inteligencia de la computadora."
            Escribir ""
            Esperar Tecla
        3:
        De Otro Modo:
            Escribir ""
            Escribir "Opcion invalida."
            Esperar Tecla
    FinSegun
    resultado <- tamanioTablero
FinFuncion

SubProceso SalirDelJuego
    Limpiar Pantalla
    Escribir "=========================================="
    Escribir "             BATALLA NAVAL"
    Escribir "=========================================="
    Escribir ""
    Escribir "Gracias por jugar."
    Escribir ""
    Escribir "Saliendo del juego..."
FinSubProceso

SubProceso DibujarTableroNaval(tablero, n)
    Definir i, j Como Entero
    i <- 0
    j <- 0
    Escribir Sin Saltar  "   "
    Para j <- 1 Hasta n Hacer
        Si j < 10 Entonces
            Escribir Sin Saltar j, " "
        Sino
            Escribir Sin Saltar j, " "
        FinSi
    FinPara
    Escribir ""
    
    Para i <- 1 Hasta n Hacer
        Si i < 10 Entonces
            Escribir Sin Saltar i, "  "
        Sino
            Escribir Sin Saltar i, " "
        FinSi
        
        Para j <- 1 Hasta n Hacer
            Escribir Sin Saltar tablero[i,j], " "
        FinPara
        Escribir ""
    FinPara
    Escribir ""
FinSubProceso

SubProceso ColocarBarcosBot(tableroBot, n)
    Definir tamanioBarcos Como Entero
    Dimension tamanioBarcos[5]
    Definir k, tamanio, fila, col, orientacion, i Como Entero
    Definir colocado Como Logico
    k <- 0
    tamanio <- 0
    fila <- 0
    col <- 0
    orientacion <- 0
    i <- 0
	
    tamanioBarcos[1] <- 5
    tamanioBarcos[2] <- 4
    tamanioBarcos[3] <- 4
    tamanioBarcos[4] <- 3
	
    Para k <- 1 Hasta 4 Hacer
        tamanio <- tamanioBarcos[k]
        colocado <- Falso
		
        Mientras NO colocado Hacer
            fila <- Azar(n) + 1
            col <- Azar(n) + 1
            orientacion <- Azar(2) + 1
			
            Si CabeEnTablero(fila, col, tamanio, orientacion, n) Entonces
                Si EstaLibre(tableroBot, fila, col, tamanio, orientacion, n) Entonces
                    Si orientacion = 1 Entonces
                        Para i <- col Hasta col + tamanio - 1 Hacer
                            tableroBot[fila, i] <- "B"
                        FinPara
                    Sino
                        Para i <- fila Hasta fila + tamanio - 1 Hacer
                            tableroBot[i, col] <- "B"
                        FinPara
                    FinSi
                    colocado <- Verdadero
                FinSi
            FinSi
        FinMientras
    FinPara
FinSubProceso

Funcion h <- VerificarBarcoHundido(tableroReal, tableroDisparos, n, tam)
    Definir i, j, k, r, c,h Como Entero
    Definir encontrado Como Logico
    h <- 0
    
    Para i <- 1 Hasta n Hacer
        Para j <- 1 Hasta n Hacer
            // Si encontramos una parte de un barco no evaluada o simplemente barriendo cada celda 'B' real:
            // Una forma simple: verificar si existe un barco de tamaño 'tam' horizontal o vertical a partir de i,j que esté 100% tocado ("X")
            
            // Chequear Horizontal
            Si j + tam - 1 <= n Entonces
                encontrado <- Verdadero
                Para k <- 0 Hasta tam - 1 Hacer
                    Si tableroReal[i, j + k] <> "B" O tableroDisparos[i, j + k] <> "X" Entonces
                        encontrado <- Falso
                    FinSi
                FinPara
                Si encontrado Entonces
                    h <- 1
                FinSi
            FinSi
            
            // Chequear Vertical
            Si i + tam - 1 <= n Entonces
                encontrado <- Verdadero
                Para k <- 0 Hasta tam - 1 Hacer
                    Si tableroReal[i + k, j] <> "B" O tableroDisparos[i + k, j] <> "X" Entonces
                        encontrado <- Falso
                    FinSi
                FinPara
                Si encontrado Entonces
                    h <- 1
                FinSi
            FinSi
            
        FinPara
    FinPara
FinFuncion

SubProceso DisparoJugador(tableroBot, tableroDisparosJugador, n)
    Definir filaJugador, colJugador Como Entero
    Definir posicionValida Como Logico
    filaJugador <- 0
    colJugador <- 0
	
    posicionValida <- Falso
	
    Mientras NO posicionValida Hacer
        Escribir "Ingrese la fila a la que quiere disparar (1-", n, "):"
        Leer filaJugador
        Escribir "Ingrese la columna a la que quiere disparar (1-", n, "):"
        Leer colJugador
		
        Si filaJugador < 1 O filaJugador > n O colJugador < 1 O colJugador > n Entonces
            Escribir "Posicion fuera del tablero. Intente otra vez."
        Sino
            Si tableroDisparosJugador[filaJugador, colJugador] <> "~" Entonces
                Escribir "Ya disparaste a esa casilla. Elegi otra."
            Sino
                posicionValida <- Verdadero
            FinSi
        FinSi
    FinMientras
	
	Si tableroBot[filaJugador, colJugador] = "B" Entonces
        tableroDisparosJugador[filaJugador, colJugador] <- "X"
        Escribir "Impacto! Le diste a un barco enemigo."
        
        // Verificamos si con este impacto se hundió algún barco revisando los barcos restantes del bot
        // (Nota: Para un aviso exacto de "hundido", validamos si hay barcos completos de 5, 4 o 3)
        Si VerificarBarcoHundido(tableroBot, tableroDisparosJugador, n, 5) = 1 Entonces
            Escribir "¡Has hundido el barco de 5 casillas del enemigo!"
        Sino
            Si VerificarBarcoHundido(tableroBot, tableroDisparosJugador, n, 4) >= 1 Entonces
                Escribir "¡Has hundido un barco de 4 casillas del enemigo!"
            Sino
                Si VerificarBarcoHundido(tableroBot, tableroDisparosJugador, n, 3) = 1 Entonces
                    Escribir "¡Has hundido el barco de 3 casillas del enemigo!"
                FinSi
            FinSi
        FinSi
    Sino
        tableroDisparosJugador[filaJugador, colJugador] <- "O"
        Escribir "Agua! No habia ningun barco en esa casilla."
    FinSi
FinSubProceso

SubProceso DisparoBot(tablero, tableroDisparosBot, n)
    Definir filaBot, colBot Como Entero
    filaBot <- 0
    colBot <- 0
	
    Repetir
        filaBot <- Azar(n) + 1
        colBot <- Azar(n) + 1
    Hasta Que tableroDisparosBot[filaBot, colBot] = "~"
	
    Si tablero[filaBot, colBot] = "B" Entonces
        tableroDisparosBot[filaBot, colBot] <- "X"
        Escribir "El bot acerto en la fila ", filaBot, " y columna ", colBot
    Sino
        tableroDisparosBot[filaBot, colBot] <- "O"
        Escribir "El bot fallo en la fila ", filaBot, " y columna ", colBot
    FinSi
	
    Escribir ""
    Escribir "Tu tablero despues del disparo del bot:"
    DibujarTableroJugador(tablero, tableroDisparosBot, n)
FinSubProceso

SubProceso DibujarTableroJugador(tablero, tableroDisparosBot, n)
    Definir i, j Como Entero
    i <- 0
    j <- 0
	
    Escribir Sin Saltar "    "
    Para j <- 1 Hasta n Hacer
        Escribir Sin Saltar j, "  "
    FinPara
    Escribir ""
	
    Para i <- 1 Hasta n Hacer
		si i < n Entonces
			Escribir Sin Saltar i, "   "
		SiNo
			Escribir Sin Saltar i, "  "
		FinSi
	
        Para j <- 1 Hasta n Hacer
            Si tableroDisparosBot[i, j] = "~" Entonces
                Escribir Sin Saltar tablero[i, j], "  "
            Sino
                Escribir Sin Saltar tableroDisparosBot[i, j], "  "
            FinSi
        FinPara
        Escribir ""
    FinPara
    Escribir ""
FinSubProceso

SubProceso DibujarTableroEnemigo(tableroDisparosJugador, n)
    Definir i, j Como Entero
    i <- 0
    j <- 0
	
    Escribir Sin Saltar "    "
    Para j <- 1 Hasta n Hacer
        Escribir Sin Saltar j, "  "
    FinPara
    Escribir ""
	
    Para i <- 1 Hasta n Hacer
        si i < n Entonces
			Escribir Sin Saltar i, "   "
		SiNo
			Escribir Sin Saltar i, "  "
		FinSi
        Para j <- 1 Hasta n Hacer
            Escribir Sin Saltar tableroDisparosJugador[i, j], "  "
        FinPara
        Escribir ""
    FinPara
    Escribir ""
FinSubProceso

Funcion cantidad <- ContarImpactos(tableroDisparos, n)
    Definir i, j, cantidad Como Entero
    i <- 0
    j <- 0
    cantidad <- 0
	
    Para i <- 1 Hasta n Hacer
        Para j <- 1 Hasta n Hacer
            Si tableroDisparos[i, j] = "X" Entonces
                cantidad <- cantidad + 1
            FinSi
        FinPara
    FinPara
FinFuncion
