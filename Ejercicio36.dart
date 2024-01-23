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
  static List<List<int>> findCouplesWithAddition( List<int> numbers, int expectedResult ){
    List<List<int>> result = [];
    // List<List<int>> finalResult = [];
    // List<int> copyOfNumbers = numbers;
    for(int i = 0; i < numbers.length; i++){
      var firstNumber = numbers[i];
      var secondNumber = expectedResult - firstNumber;

      if(numbers.contains(secondNumber) && secondNumber != firstNumber){
        result.add([firstNumber, secondNumber]);
      }
    }

    // for(int i = 0; i < numbers.length; i++){
    //   result[i] = [];
    //   if(result[i] != []){
    //     finalResult.add(result[i]);
    //   }
    // }
    
    return result;
  }
}

void main(){
  print(Couples.findCouplesWithAddition([1,2,3,4], 5));
}

// EXAMPLE
// void main() {
//   List<int> array = [1, 2, 3, 4, 5];
//   List<List<int>> arregloDeArreglos = [];

//   for (int i = 0; i < array.length; i++) {
//     List<int> subArray = [array[i]];
//     arregloDeArreglos.add(subArray);
//   }

//   print(arregloDeArreglos); // [[1], [2], [3], [4], [5]]
// }
