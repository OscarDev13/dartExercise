
/*
Advertencias:
- En español por fines didácticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 21:
Crea una función que reciba un numero y me genere una matriz
con el numero de columnas y filas que le hemos indicado por parámetro
 
Ejemplos:
generarMatriz(4);
 
Devuelve: 
[
  [ 1, 2, 3, 4 ],
  [ 5, 6, 7, 8 ],
  [ 9, 10, 11, 12 ],
  [ 13, 14, 15, 16 ]
]
 
*/

class Matrix {
  void generateMatrix(int size){
    // var matrix = Matrix.fromList([]);
    List<List<dynamic>> matriz = [];
    List<int> firstData = [];
    for (int i = 0; i < size; i++){
      firstData.add(i+1);
    }
    // matriz.add([size]);
    for (int i = 0; i < size; i++){
      for(int j = 0; j < size*size; j++){
        matriz.add([j+1]);
      }
    }
    print(firstData);
  }
}

void main(){
  Matrix matrix = Matrix();
  matrix.generateMatrix(4);
}