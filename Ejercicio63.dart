/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 63:
Crea una función para conseguir las sumas acumuladas de una array de numeros
 
Ejemplos:
sumasAcumuladas([1, 2, 3, 4])   // [1, 3, 6, 10] 
 
(se calcula como: [1, 1+2, 1+2+3, 1+2+3+4])
*/

class Numbers {
  List<int> acumulatedSums(List<int> numbers) {

    List<int> result = [];

    int sum = 0;

    for(int number in numbers){
      sum += number;
      result.add(sum);
    }

  //   List<int> result = [];
  //   for(int i = 0; i < numbers.length; i++){
  //     for(int j = 0; j < numbers.length; j++){
  //       print(numbers[i] + numbers[j]);
  //     }
  //   }
  //   // while (result.length < numbers.length) {
  //   //   for(int i = 0; i < numbers.length; i++){
  //   //     result.add(numbers[i])
  //   //   }
  //   // }
    return result;
  }
}

void main() {
  Numbers numbers = Numbers();
  print(numbers.acumulatedSums([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));
}
