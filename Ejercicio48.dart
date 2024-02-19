/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 48:
Dado un array eleva al cubo todos sus numeros y devuelve la mitad de 
cada uno.
 
Ejemplos:
elevaMitad([1, 2, 3, 4])  //Devuelve: [ 0.5, 4, 13.5, 32 ]
*/

import 'dart:math';


class Number {
  // static List<double> exponentHalf(List<int> numbers){
  //   List<double> results = [];
  //   for(int i = 0; i < numbers.length; i++){
  //     results.add((pow(numbers[i], 3) / 2));
  //   }
  //   return results;
  // }

  static List<double> exponentHalf(List<int> numbers){
    return numbers.map((number) => (pow(number, 3) / 2 ) ).toList();
  }
}

void main(){
 print(Number.exponentHalf([1,2,3,4]));
}