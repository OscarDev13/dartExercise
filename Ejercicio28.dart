/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 28:
Crea una función que me diga si un número es armstrong o no.
 
Un número es armstrong si la suma de los cubos de sus dígitos es igual al número. 
Por ejemplo, el número 371 es armstrong porque 3^3 + 7^3 + 1^3 = 371.
 
Si la cifra es de 4 digitos, se eleva a 4, y si es de 5 a 5.
 
Ejemplos:
esArmstrong(371)  // Devuelve: true
*/

import 'dart:math';

class Number {
  static bool isArmstrong(int number){
    int originalNumber = number;
    // print(originalNumber);
    List<String> numberString = [];
    var numberInt = [];
    int sum = 0;
    // bool result;
    numberString = number.toString().split('');
    for(int i = 0; i < numberString.length; i++){
      numberInt.add( pow(int.parse(numberString[i]), 3) );
      // print(numberInt[i]);
    }
    for(number in numberInt){
      sum += number;
    }
    // print('sum: ${sum} - number: ${number}');
    // result = sum == originalNumber;
    // print(result);
    return sum == originalNumber;
  }
}

void main(){
  print(Number.isArmstrong(371));
}