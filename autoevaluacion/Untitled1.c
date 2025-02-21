#include <iostream>
using namespace std;


void ingresarResultado(int &golesEquipo1, int &golesEquipo2) {
    cout << "Ingresa los goles del Equipo 1: ";
    cin >> golesEquipo1;
    cout << "Ingresa los goles del Equipo 2: ";
    cin >> golesEquipo2;

}

int calcularPuntos(int golesEquipo1, int golesEquipo2) {
    if (golesEquipo1 > golesEquipo2) {
        return 3;
    } else if (golesEquipo1 < golesEquipo2) {
        return 0;
    } else {
        return 1;
    }
}

// tabla de los rsultados
void mostrarResultados(int juegosJugados[], int juegosGanados[], int juegosEmpatados[], int juegosPerdidos[], int puntos[], double porcentajes[], int equipos) {
    cout << "\nResultados Finales: \n";
    for (int i = 0; i < equipos; i++) {
        cout << "Equipo " << (i + 1) << ":\n";
        cout << "  Juegos Jugados: " << juegosJugados[i] << endl;
        cout << "  Juegos Ganados: " << juegosGanados[i] << endl;
        cout << "  Juegos Empatados: " << juegosEmpatados[i] << endl;
        cout << "  Juegos Perdidos: " << juegosPerdidos[i] << endl;
        cout << "  Puntos: " << puntos[i] << endl;
        cout << "  Porcentaje de Éxito: " << porcentajes[i] << "%" << endl;
        cout << endl;
    }
}

//Porcentajes de ls juegos
void calcularPorcentajes(int juegosJugados[], int juegosGanados[], double porcentajes[], int equipos) {
    for (int i = 0; i < equipos; i++) {
        if (juegosJugados[i] > 0) {
            porcentajes[i] = (static_cast<double>(juegosGanados[i]) / juegosJugados[i]) * 100;
        } else {
            porcentajes[i] = 0;
        }
    }
}

int main() {
    const int EQUIPOS = 6;
    int juegosJugados[EQUIPOS] = {0};
    int juegosGanados[EQUIPOS] = {0};
    int juegosEmpatados[EQUIPOS] = {0};
    int juegosPerdidos[EQUIPOS] = {0};
    int puntos[EQUIPOS] = {0};
    double porcentajes[EQUIPOS] = {0};

    // lops resultados de los partidos
    for (int i = 0; i < EQUIPOS; i++) {
        for (int j = i + 1; j < EQUIPOS; j++) {
            int golesEquipo1, golesEquipo2;

            cout << "\nPartido entre Equipo " << (i + 1) << " y Equipo " << (j + 1) << endl;
            ingresarResultado(golesEquipo1, golesEquipo2);


            juegosJugados[i]++;
            juegosJugados[j]++;


            int puntosEquipo1 = calcularPuntos(golesEquipo1, golesEquipo2);
            int puntosEquipo2 = calcularPuntos(golesEquipo2, golesEquipo1);

            puntos[i] += puntosEquipo1;
            puntos[j] += puntosEquipo2;


            if (puntosEquipo1 == 3) {
                juegosGanados[i]++;
                juegosPerdidos[j]++;
            } else if (puntosEquipo1 == 1) {
                juegosEmpatados[i]++;
                juegosEmpatados[j]++;
            } else {
                juegosPerdidos[i]++;
                juegosGanados[j]++;
            }
        }
    }


    calcularPorcentajes(juegosJugados, juegosGanados, porcentajes, EQUIPOS);


    mostrarResultados(juegosJugados, juegosGanados, juegosEmpatados, juegosPerdidos, puntos, porcentajes, EQUIPOS);

    return 0;
}






