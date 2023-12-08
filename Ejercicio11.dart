/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 11:
 Crea una función a la cual le pase un array de numeros
 y un numero que será el resultado de la suma de dos de los valores
 
Ejemplos:
sumarDos([3, 7, 8, 2], 10) // [3, 7] (ambos suman 10)
sumarDos([4, 5, 9, 1], 10) // [9, 1]
sumarDos([1, 2, 3, 4], 5) // [2, 3]
 
*/

class Numbers {
  // List<int> result (List<int> numbers, int expectedResult) {

  //   // Define array to save the numbers
  //   List<int> numbersToSave = [];

  //   // iterate the array
  //   for (int i = 0; i < numbers.length; i++){
  //     for(int j = 0; j < numbers.length; j++){
  //       if(numbers[i]+numbers[j] == expectedResult){
  //         numbersToSave.add(numbers[i]);
  //         numbersToSave.add(numbers[j]);
  //       }
  //     }
  //   }
    
  //   return numbersToSave;
  // }
  // @param myParam it doesnt works
  List<int> result (List<int> numbers, int expectedResult) {
    for(int i = 0; i < numbers.length; i++) {
      //* Calculation, for get the second number to return
      var firstNumber = numbers[i];
      var secondNumber = expectedResult - firstNumber;


      if(numbers.contains(secondNumber) && secondNumber != firstNumber){
        return [firstNumber, secondNumber];
      }
    }
    return [];
  }
}

void main(){
  Numbers numbers =  Numbers();
  final result = numbers.result([3, 7, 8, 2], 10);
  print(result);
}