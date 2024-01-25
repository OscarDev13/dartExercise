/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 38:
Crea una función que convierta un número a binario.
 
Ejemplos:
aBinario(10) // 1010
aBinario(76) // 1001100
*/

class Number {
  static dynamic toBinary(dynamic number){
    dynamic result = '';
    dynamic finalResult;
    while (number > 0) {
      // print('number ${(number % 2).floor()}  result $result');
      // finalResult = finalResult += 
      // result = ((number % 2).floor()) + result;
      result = '${number%2}$result';
      number = (number / 2).floor();
      // print(number);
    }
    // print(result.runtimeType);
    return int.parse(result);
  }
}

void main(){
  print(Number.toBinary(10));
  print(Number.toBinary(76));
  print(Number.toBinary(189));
}