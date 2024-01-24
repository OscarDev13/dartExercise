/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.

Enunciado Ejercicio 36:
Crea un programa que encuentre las parejas de números que como resultado
dan un número que pasamos a la función por parametro.

Ejemplos:
encontrarParejasConSuma([1, 2, 3, 4], 5);

Devuelve:
[ [ 1, 4 ], [ 2, 3 ] ]

*/



class Couples {
  static List<List<int>> findCouplesWithSum(List<int> numbers, int expectedResult) {
    List<List<int>> result = [];
    for(int i = 0; i < numbers.length; i++){
      for(int j = i + 1; j < numbers.length; j++){
        if(numbers[i] + numbers[j] == expectedResult){
          result.add([numbers[i], numbers[j]]);
        }
      }
    }
    return result;
  }
}

void main() {
  print( Couples.findCouplesWithSum([1, 2, 3, 4,5,6], 7) );
}
