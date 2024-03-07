/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 59:
Crea una función que retorne el número total de bumeranes de un 
array de números enteros e imprima cada uno de ellos.
 
Un bumerán (búmeran, boomerang) es una secuencia formada por 3 números seguidos, 
en el que el primero y el último son iguales, y el segundo es diferente. 
Por ejemplo [2, 1, 2].
 
Ejemplos:
contrarBumeranes([2, 1, 2, 3, 3, 4, 2, 4])
 
Devuelve:
Hay 2 bumeranes: [[2, 1, 2], [4, 2, 4]]
 
*/

class Boomerang {
  String countBoomerangs(List<int> numbers){
    int count = 0;
    List<List<int>> result = [];

    for(int i = 0; i < numbers.length-2; i++){
      int firstNumber = numbers[i];
      int secondNumber = numbers[i+1];
      int tirthNumber = numbers[i+2];

      if(firstNumber == tirthNumber && firstNumber != secondNumber){
        count++;
        result.add([firstNumber, secondNumber, tirthNumber]);
      }
    }

    return 'Hay ${count} boomerans: ${result}';
  }
}
 
void main(){
  Boomerang boomerang = Boomerang();
  print(boomerang.countBoomerangs([2, 1, 2, 3, 3, 4, 2, 4,7,7,7,7,8,7]));

}