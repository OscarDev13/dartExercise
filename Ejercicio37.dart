/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 37:
Crea dos funciones que comprueben si dado un array de números, todos ellos son pares.
 
Una función usando metodos del lenguaje y otra solo usando estructuras de control.
 
Ejemplos:
  Pares([1, 2, 3, 4]); // false
  Pares([2, 6, 8, 12]); // true
*/

class Number {
  static bool areAllEvenNumbers(List<int> numbers){
    List<int> pairs = [];
    for(int i = 0; i < numbers.length; i++){
      if(numbers[i] %2 == 0){
        pairs.add(numbers[i]);
      }
    }
    print(pairs);
    return pairs.length == numbers.length;
  }
}

void main(){
  print(Number.areAllEvenNumbers([1,2,3,4,5,6]));
  print(Number.areAllEvenNumbers([2,4,6,8,10]));
}

 